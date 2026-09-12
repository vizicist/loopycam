const state = {
  connected: false,
  initialized: false,
  latest: null,
  actionsInFlight: 0,
  nextRequest: 0,
  lastApplied: 0,
  selectedSlot: { type: 'pre', slot: 0 },
  pluginUiSignature: '',
  parameterSignature: '',
  commandHistory: [],
  historyIndex: 0,
  lastRefreshError: '',
};

const connection = document.querySelector('#connection');
const toast = document.querySelector('#toast');
const consoleOutput = document.querySelector('#console-output');
const consoleInput = document.querySelector('#console-input');

function consoleLog(message, kind = '') {
  const line = document.createElement('div');
  line.className = `console-line ${kind}`;
  const time = new Date().toLocaleTimeString([], { hour12: false });
  line.textContent = `[${time}] ${message}`;
  consoleOutput.append(line);
  while (consoleOutput.children.length > 200) consoleOutput.firstChild.remove();
  consoleOutput.scrollTop = consoleOutput.scrollHeight;
}

function showError(message) {
  toast.textContent = message;
  toast.classList.add('visible');
  clearTimeout(showError.timer);
  showError.timer = setTimeout(() => toast.classList.remove('visible'), 3000);
  consoleLog(message, 'error');
}

function setConnection(online) {
  if (state.initialized && online !== state.connected) {
    consoleLog(online ? 'Connection restored.' : 'Connection lost; retrying.', online ? 'success' : 'error');
  }
  state.connected = online;
  state.initialized = true;
  connection.classList.toggle('online', online);
  connection.classList.toggle('offline', !online);
  connection.lastChild.textContent = online ? ' Connected' : ' Reconnecting';
}

async function request(url, options) {
  const response = await fetch(url, { cache: 'no-store', ...options });
  const data = await response.json();
  if (!response.ok) throw new Error(data.error || `Request failed (${response.status})`);
  return data;
}

function actionDescription(payload) {
  if (payload.action === 'setPlugin') return `plugin ${payload.type} ${payload.slot + 1} = ${payload.name}`;
  if (payload.action === 'setPluginParam') return `${payload.name}.${payload.parameter} = ${Number(payload.value).toFixed(3)}`;
  if (payload.action === 'randomPlugin') return `random plugin in ${payload.type} slot ${payload.slot + 1}`;
  if (payload.action === 'randomPluginParams') return `randomize parameters for ${payload.name}`;
  if (payload.action === 'defaultPluginParams') return `restore defaults for ${payload.name}`;
  return payload.value === undefined ? payload.action : `${payload.action} = ${payload.value}`;
}

async function act(action, value, extra = {}, options = {}) {
  const payload = { action, ...extra };
  if (value !== undefined) payload.value = value;
  const requestId = ++state.nextRequest;
  state.lastApplied = requestId;
  state.actionsInFlight += 1;
  applyOptimistic(payload);
  try {
    const next = await request('/api/action', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload),
    });
    if (requestId >= state.lastApplied) {
      state.lastApplied = requestId;
      render(next);
    }
    if (!options.quiet) consoleLog(`ok: ${actionDescription(payload)}`, 'success');
    return next;
  } catch (error) {
    showError(error.message);
    setConnection(false);
    return null;
  } finally {
    state.actionsInFlight -= 1;
  }
}

function copyState() {
  if (!state.latest?.ready) return null;
  const next = { ...state.latest, loops: state.latest.loops.map(loop => ({ ...loop })) };
  if (state.latest.plugins) {
    next.plugins = {
      available: state.latest.plugins.available,
      slots: Object.fromEntries(Object.entries(state.latest.plugins.slots).map(([type, slots]) => [
        type, slots.map(plugin => ({ ...plugin, params: plugin.params.map(param => ({ ...param })) })),
      ])),
    };
  }
  return next;
}

function applyOptimistic(payload) {
  const next = copyState();
  if (!next) return;
  const { action, value } = payload;

  if (action === 'record') {
    if (value && next.autoNext) {
      for (let offset = 1; offset <= next.loops.length; offset += 1) {
        const candidate = (next.currentLoop + offset) % next.loops.length;
        if (next.loops[candidate].playing > 0) { next.currentLoop = candidate; break; }
      }
    }
    if (value) next.loops.forEach(loop => { loop.recording = 0; });
    next.loops[next.currentLoop].recording = value ? 1 : 0;
    if (value) next.loops[next.currentLoop].playing = 1;
  } else if (action === 'overlay') {
    next.loops.forEach(loop => { loop.recording = 0; });
    next.loops[next.currentLoop].recording = value ? 2 : 0;
  } else if (action === 'blackout') {
    next.blackout = Boolean(value);
  } else if (action === 'currentLoop') {
    next.currentLoop = value;
  } else if (['autoNext', 'trail', 'xor', 'border', 'recordBorder', 'smooth', 'interpolate'].includes(action)) {
    next[action] = Boolean(value);
  } else if (action === 'trailAmount') {
    next.trailAmount = value;
  } else if (action === 'setPlugin' && next.plugins) {
    next.plugins.slots[payload.type][payload.slot] = { name: payload.name, params: [] };
  } else if (action === 'setPluginParam' && next.plugins) {
    Object.values(next.plugins.slots).flat().forEach(plugin => {
      if (plugin.name !== payload.name) return;
      const parameter = plugin.params.find(item => item.name === payload.parameter);
      if (parameter) parameter.value = value;
    });
  }
  render(next);
}

function selectedPlugin(snapshot = state.latest) {
  return snapshot?.plugins?.slots?.[state.selectedSlot.type]?.[state.selectedSlot.slot] || null;
}

function selectSlot(type, slot) {
  state.selectedSlot = { type, slot };
  document.querySelectorAll('.slot-row').forEach(row => {
    row.classList.toggle('selected', row.dataset.type === type && Number(row.dataset.slot) === slot);
  });
  state.parameterSignature = '';
  renderParameters(state.latest);
}

function buildPluginSlots(plugins) {
  const signature = JSON.stringify(plugins.available);
  if (signature === state.pluginUiSignature) return;
  const firstBuild = !state.pluginUiSignature;
  state.pluginUiSignature = signature;

  if (firstBuild) {
    for (const type of ['pre', 'post', 'ffgl']) {
      const slot = plugins.slots[type].findIndex(plugin => plugin.name !== 'None');
      if (slot !== -1) {
        state.selectedSlot = { type, slot };
        break;
      }
    }
  }

  ['pre', 'post', 'ffgl'].forEach(type => {
    const container = document.querySelector(`#slots-${type}`);
    container.textContent = '';
    const names = type === 'ffgl' ? plugins.available.ffgl : plugins.available.freeframe;
    for (let slot = 0; slot < 3; slot += 1) {
      const row = document.createElement('div');
      row.className = 'slot-row';
      row.dataset.type = type;
      row.dataset.slot = slot;
      const index = document.createElement('span');
      index.className = 'slot-index';
      index.textContent = slot;
      const select = document.createElement('select');
      select.setAttribute('aria-label', `${type} plugin slot ${slot + 1}`);
      ['None', ...names].forEach(name => select.add(new Option(name, name)));
      select.addEventListener('focus', () => selectSlot(type, slot));
      select.addEventListener('change', () => {
        selectSlot(type, slot);
        act('setPlugin', undefined, { type, slot, name: select.value });
      });

      const random = document.createElement('button');
      random.textContent = 'R';
      random.title = 'Random plugin';
      random.addEventListener('click', () => {
        selectSlot(type, slot);
        act('randomPlugin', undefined, { type, slot });
      });
      const params = document.createElement('button');
      params.textContent = 'P';
      params.title = 'Random parameters';
      params.addEventListener('click', () => {
        selectSlot(type, slot);
        const plugin = selectedPlugin();
        if (plugin && plugin.name !== 'None') {
          act('randomPluginParams', undefined, { type, name: plugin.name });
        }
      });
      const clear = document.createElement('button');
      clear.textContent = 'X';
      clear.title = 'Clear plugin';
      clear.addEventListener('click', () => {
        selectSlot(type, slot);
        act('setPlugin', undefined, { type, slot, name: 'None' });
      });
      row.append(index, select, random, params, clear);
      row.addEventListener('click', event => {
        if (!event.target.closest('button,select')) selectSlot(type, slot);
      });
      container.append(row);
    }
  });
  selectSlot(state.selectedSlot.type, state.selectedSlot.slot);
}

function updatePluginSlots(plugins) {
  ['pre', 'post', 'ffgl'].forEach(type => {
    plugins.slots[type].forEach((plugin, slot) => {
      const select = document.querySelector(`.slot-row[data-type="${type}"][data-slot="${slot}"] select`);
      if (select && document.activeElement !== select) select.value = plugin.name;
    });
  });
}

function sendParameter(type, name, parameter, value, quiet = false) {
  return act('setPluginParam', Number(value), { type, name, parameter }, { quiet });
}

function renderParameters(snapshot) {
  const plugin = selectedPlugin(snapshot);
  const selectedName = document.querySelector('#selected-plugin');
  selectedName.textContent = plugin?.name || 'None';
  const params = plugin?.params || [];
  const signature = `${state.selectedSlot.type}:${state.selectedSlot.slot}:${plugin?.name}:${params.map(p => p.name).join('|')}`;
  const list = document.querySelector('#parameter-list');

  if (signature !== state.parameterSignature) {
    state.parameterSignature = signature;
    list.textContent = '';
    if (!plugin || plugin.name === 'None') {
      const message = document.createElement('p');
      message.className = 'empty-message';
      message.textContent = 'Select an active plugin slot.';
      list.append(message);
      return;
    }
    if (!params.length) {
      const message = document.createElement('p');
      message.className = 'empty-message';
      message.textContent = 'This plugin has no adjustable parameters.';
      list.append(message);
      return;
    }

    params.slice(0, 12).forEach(param => {
      const row = document.createElement('div');
      row.className = 'parameter-row';
      const label = document.createElement('label');
      label.textContent = param.name;
      label.title = param.name;
      const range = document.createElement('input');
      range.type = 'range';
      range.min = '0';
      range.max = '1';
      range.step = '0.001';
      range.value = param.value;
      range.dataset.parameter = param.name;
      const number = document.createElement('input');
      number.type = 'number';
      number.min = '0';
      number.max = '1';
      number.step = '0.001';
      number.value = Number(param.value).toFixed(3);
      number.dataset.parameter = param.name;
      let timer;
      range.addEventListener('input', () => {
        number.value = Number(range.value).toFixed(3);
        clearTimeout(timer);
        timer = setTimeout(() => sendParameter(state.selectedSlot.type, plugin.name, param.name, range.value, true), 60);
      });
      range.addEventListener('change', () => {
        clearTimeout(timer);
        sendParameter(state.selectedSlot.type, plugin.name, param.name, range.value);
      });
      number.addEventListener('change', () => {
        const value = Math.max(0, Math.min(1, Number(number.value)));
        range.value = value;
        number.value = value.toFixed(3);
        sendParameter(state.selectedSlot.type, plugin.name, param.name, value);
      });
      row.append(label, range, number);
      list.append(row);
    });
  } else {
    params.forEach(param => {
      list.querySelectorAll(`[data-parameter="${CSS.escape(param.name)}"]`).forEach(input => {
        if (document.activeElement === input) return;
        input.value = input.type === 'number' ? Number(param.value).toFixed(3) : param.value;
      });
    });
  }
}

function buildLoops() {
  const container = document.querySelector('#loops');
  if (!container.children.length) {
    for (let index = 0; index < 8; index += 1) {
      const row = document.createElement('div');
      row.className = 'loop-row';
      const label = document.createElement('span');
      label.className = 'loop-index';
      label.textContent = index;
      const button = document.createElement('button');
      button.textContent = 'None';
      button.addEventListener('click', () => act('currentLoop', index));
      row.append(label, button);
      container.append(row);
    }
  }

  const statusContainer = document.querySelector('#status-loops');
  if (!statusContainer.children.length) {
    for (let index = 0; index < 8; index += 1) {
      const button = document.createElement('button');
      button.className = 'status-loop-button';
      button.innerHTML = `<strong>${index + 1}</strong><small>Empty</small>`;
      button.addEventListener('click', () => act('currentLoop', index));
      statusContainer.append(button);
    }
  }
}

function renderLoops(snapshot) {
  document.querySelectorAll('.loop-row button').forEach((button, index) => {
    const loop = snapshot.loops[index];
    button.className = '';
    if (index === snapshot.currentLoop) button.classList.add('selected');
    if (loop.recording === 1) { button.textContent = `Recording (${loop.frames})`; button.classList.add('recording'); }
    else if (loop.recording === 2) { button.textContent = `Overlay (${loop.frames})`; button.classList.add('overlaying'); }
    else if (loop.playing === 2) { button.textContent = 'Live'; button.classList.add('live'); }
    else if (loop.playing === 1) button.textContent = `Loop (${loop.frames})`;
    else button.textContent = loop.frames ? `Stored (${loop.frames})` : 'None';
  });

  document.querySelectorAll('.status-loop-button').forEach((button, index) => {
    const loop = snapshot.loops[index];
    button.className = 'status-loop-button';
    if (index === snapshot.currentLoop) button.classList.add('selected');
    if (loop.recording === 1) button.classList.add('recording');
    else if (loop.recording === 2) button.classList.add('overlaying');
    else if (loop.playing === 2) button.classList.add('live');
    const status = loop.recording === 1 ? 'Recording'
      : loop.recording === 2 ? 'Overlay'
        : loop.playing === 2 ? 'Live'
          : loop.playing === 1 ? `${loop.frames} frames`
            : loop.frames ? `${loop.frames} stored` : 'Empty';
    button.querySelector('small').textContent = status;
  });
}

function render(snapshot) {
  state.latest = snapshot;
  setConnection(Boolean(snapshot.ready));
  if (!snapshot.ready) return;
  buildLoops();
  renderLoops(snapshot);
  if (snapshot.plugins) {
    buildPluginSlots(snapshot.plugins);
    updatePluginSlots(snapshot.plugins);
    renderParameters(snapshot);
  }

  document.querySelector('#current-loop').textContent = snapshot.currentLoop + 1;
  document.querySelector('#active-loop-count').textContent = snapshot.loops.filter(loop => loop.playing > 0 || loop.recording > 0 || loop.frames > 0).length;
  document.querySelector('#window-count').textContent = snapshot.windows;
  document.querySelector('#window-output').textContent = snapshot.windows;
  const deckStatus = document.querySelector('#streamdeck-status');
  deckStatus.classList.toggle('online', Boolean(snapshot.streamDeck));
  deckStatus.classList.toggle('offline', !snapshot.streamDeck);
  deckStatus.querySelector('span').textContent = snapshot.streamDeck ? 'Stream Deck + connected natively' : 'Stream Deck + disconnected — reconnecting';
  const selected = snapshot.loops[snapshot.currentLoop];
  document.querySelector('#mode').textContent = selected.recording === 1 ? 'Recording'
    : selected.recording === 2 ? 'Overlay' : snapshot.blackout ? 'Blackout'
      : snapshot.controlMode || (selected.playing === 2 ? 'Live' : selected.playing === 1 ? 'Loop' : 'Idle');
  document.querySelector('#record').classList.toggle('pressed', selected.recording === 1);
  document.querySelector('#overlay').classList.toggle('pressed', selected.recording === 2);
  document.querySelector('#blackout').classList.toggle('active', snapshot.blackout);
  document.querySelectorAll('input[data-toggle]').forEach(input => { input.checked = Boolean(snapshot[input.dataset.toggle]); });
  document.querySelector('#trail-amount').value = snapshot.trailAmount;
  document.querySelector('#trail-value').textContent = snapshot.trailAmount.toFixed(2);
}

function randomSlot(type, slot = 0) {
  return act('randomPlugin', undefined, { type, slot });
}

function bindHold(button, action) {
  let held = false;
  const release = () => {
    if (!held) return;
    held = false;
    button.classList.remove('pressed');
    act(action, false);
  };
  button.addEventListener('pointerdown', event => {
    event.preventDefault();
    held = true;
    button.classList.add('pressed');
    button.setPointerCapture(event.pointerId);
    act(action, true);
  });
  button.addEventListener('pointerup', release);
  button.addEventListener('pointercancel', release);
  button.addEventListener('lostpointercapture', release);
  window.addEventListener('blur', release);
}

document.querySelectorAll('[data-action]').forEach(button => button.addEventListener('click', () => act(button.dataset.action)));
document.querySelectorAll('input[data-toggle]').forEach(input => input.addEventListener('change', () => act(input.dataset.toggle, input.checked)));
document.querySelector('#blackout').addEventListener('click', () => act('blackout', !Boolean(state.latest?.blackout)));
bindHold(document.querySelector('#record'), 'record');
bindHold(document.querySelector('#overlay'), 'overlay');

const trailAmount = document.querySelector('#trail-amount');
trailAmount.addEventListener('input', () => { document.querySelector('#trail-value').textContent = Number(trailAmount.value).toFixed(2); });
trailAmount.addEventListener('change', () => act('trailAmount', Number(trailAmount.value)));

document.querySelector('#random-current').addEventListener('click', () => randomSlot(state.selectedSlot.type, state.selectedSlot.slot));
document.querySelector('#clear-current').addEventListener('click', () => act('setPlugin', undefined, { ...state.selectedSlot, name: 'None' }));
document.querySelector('#random-params').addEventListener('click', () => {
  const plugin = selectedPlugin();
  if (plugin && plugin.name !== 'None') act('randomPluginParams', undefined, { type: state.selectedSlot.type, name: plugin.name });
});
document.querySelector('#default-params').addEventListener('click', () => {
  const plugin = selectedPlugin();
  if (plugin && plugin.name !== 'None') act('defaultPluginParams', undefined, { type: state.selectedSlot.type, name: plugin.name });
});

function tokenize(command) {
  const tokens = [];
  command.replace(/"([^"]*)"|'([^']*)'|(\S+)/g, (_, doubleQuoted, singleQuoted, bare) => {
    tokens.push(doubleQuoted ?? singleQuoted ?? bare);
    return '';
  });
  return tokens;
}

function parseToggle(word, current) {
  if (word === 'toggle') return !current;
  if (['on', 'true', '1'].includes(word)) return true;
  if (['off', 'false', '0'].includes(word)) return false;
  return null;
}

async function runCommand(command) {
  const tokens = tokenize(command.trim());
  if (!tokens.length) return;
  const name = tokens[0].toLowerCase();
  if (name === 'help') {
    consoleLog('state | plugins [freeframe|ffgl] | clear', 'dim');
    consoleLog('record on|off  overlay on|off  live  blackout on|off|toggle', 'dim');
    consoleLog('loop 1-8  windows 1-8  trail on|off|0.0-1.0', 'dim');
    consoleLog('plugin pre|post|ffgl SLOT NAME  random TYPE SLOT', 'dim');
    consoleLog('param NAME 0.0-1.0  defaults', 'dim');
    return;
  }
  if (name === 'clear') {
    consoleOutput.textContent = '';
    return;
  }
  if (name === 'state') {
    const s = state.latest;
    consoleLog(`loop=${s.currentLoop + 1} windows=${s.windows} mode=${document.querySelector('#mode').textContent} trail=${s.trailAmount.toFixed(2)} blackout=${s.blackout}`, 'dim');
    return;
  }
  if (name === 'plugins') {
    const requested = tokens[1]?.toLowerCase();
    if (requested === 'freeframe' || requested === 'ff') consoleLog(state.latest.plugins.available.freeframe.join(', '), 'dim');
    else if (requested === 'ffgl') consoleLog(state.latest.plugins.available.ffgl.join(', '), 'dim');
    else ['pre', 'post', 'ffgl'].forEach(type => consoleLog(`${type}: ${state.latest.plugins.slots[type].map(p => p.name).join(' | ')}`, 'dim'));
    return;
  }
  if (name === 'live') { await act('allLive'); return; }
  if (name === 'record' || name === 'overlay') {
    const value = parseToggle((tokens[1] || '').toLowerCase(), false);
    if (value === null) throw new Error(`Usage: ${name} on|off`);
    await act(name, value);
    return;
  }
  if (name === 'blackout') {
    const value = parseToggle((tokens[1] || '').toLowerCase(), state.latest.blackout);
    if (value === null) throw new Error('Usage: blackout on|off|toggle');
    await act('blackout', value);
    return;
  }
  if (name === 'loop' || name === 'windows') {
    const value = Number(tokens[1]);
    if (!Number.isInteger(value) || value < 1 || value > 8) throw new Error(`Usage: ${name} 1-8`);
    await act(name === 'loop' ? 'currentLoop' : 'windows', name === 'loop' ? value - 1 : value);
    return;
  }
  if (name === 'trail') {
    const numeric = Number(tokens[1]);
    if (tokens[1] !== undefined && Number.isFinite(numeric) && numeric >= 0 && numeric <= 1) await act('trailAmount', numeric);
    else {
      const value = parseToggle((tokens[1] || '').toLowerCase(), state.latest.trail);
      if (value === null) throw new Error('Usage: trail on|off|0.0-1.0');
      await act('trail', value);
    }
    return;
  }
  if (name === 'plugin') {
    const type = (tokens[1] || '').toLowerCase();
    const slot = Number(tokens[2]) - 1;
    const pluginName = tokens.slice(3).join(' ');
    if (!['pre', 'post', 'ffgl'].includes(type) || !Number.isInteger(slot) || slot < 0 || slot > 2 || !pluginName) {
      throw new Error('Usage: plugin pre|post|ffgl SLOT NAME');
    }
    selectSlot(type, slot);
    await act('setPlugin', undefined, { type, slot, name: pluginName });
    return;
  }
  if (name === 'random') {
    const type = (tokens[1] || '').toLowerCase();
    const slot = Number(tokens[2]) - 1;
    if (!['pre', 'post', 'ffgl'].includes(type) || !Number.isInteger(slot) || slot < 0 || slot > 2) throw new Error('Usage: random pre|post|ffgl SLOT');
    selectSlot(type, slot);
    await randomSlot(type, slot);
    return;
  }
  if (name === 'param') {
    const value = Number(tokens[tokens.length - 1]);
    const parameter = tokens.slice(1, -1).join(' ');
    const plugin = selectedPlugin();
    if (!plugin || plugin.name === 'None') throw new Error('Select an active plugin first.');
    if (!parameter || !Number.isFinite(value) || value < 0 || value > 1) throw new Error('Usage: param NAME 0.0-1.0');
    await sendParameter(state.selectedSlot.type, plugin.name, parameter, value);
    return;
  }
  if (name === 'defaults') {
    const plugin = selectedPlugin();
    if (!plugin || plugin.name === 'None') throw new Error('Select an active plugin first.');
    await act('defaultPluginParams', undefined, { type: state.selectedSlot.type, name: plugin.name });
    return;
  }
  throw new Error(`Unknown command: ${tokens[0]}. Type help.`);
}

document.querySelector('#console-form').addEventListener('submit', async event => {
  event.preventDefault();
  const command = consoleInput.value.trim();
  if (!command) return;
  consoleLog(`> ${command}`, 'command');
  state.commandHistory.push(command);
  state.historyIndex = state.commandHistory.length;
  consoleInput.value = '';
  try { await runCommand(command); } catch (error) { showError(error.message); }
});
consoleInput.addEventListener('keydown', event => {
  if (event.key === 'ArrowUp' && state.historyIndex > 0) {
    event.preventDefault();
    state.historyIndex -= 1;
    consoleInput.value = state.commandHistory[state.historyIndex];
  } else if (event.key === 'ArrowDown') {
    event.preventDefault();
    state.historyIndex = Math.min(state.commandHistory.length, state.historyIndex + 1);
    consoleInput.value = state.commandHistory[state.historyIndex] || '';
  }
});
document.querySelector('#clear-console').addEventListener('click', () => { consoleOutput.textContent = ''; consoleInput.focus(); });

async function refresh() {
  if (state.actionsInFlight > 0) { setTimeout(refresh, 250); return; }
  const requestId = ++state.nextRequest;
  try {
    const next = await request('/api/state');
    if (requestId >= state.lastApplied) {
      state.lastApplied = requestId;
      render(next);
    }
  } catch (error) {
    setConnection(false);
    if (error.message !== state.lastRefreshError) {
      state.lastRefreshError = error.message;
      consoleLog(`refresh error: ${error.message}`, 'error');
    }
  } finally {
    setTimeout(refresh, 250);
  }
}

consoleLog('LoopyCam browser console ready. Type help for commands.', 'success');
refresh();
