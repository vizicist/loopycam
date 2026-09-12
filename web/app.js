const state = {
  connected: false,
  latest: null,
  actionsInFlight: 0,
  nextRequest: 0,
  lastApplied: 0,
};
const connection = document.querySelector('#connection');
const toast = document.querySelector('#toast');
const loops = document.querySelector('#loops');

for (let index = 0; index < 8; index += 1) {
  const button = document.createElement('button');
  button.className = 'loop-button';
  button.dataset.loop = index;
  button.innerHTML = `<strong>${index + 1}</strong><small>Empty</small>`;
  button.addEventListener('click', () => act('currentLoop', index));
  loops.append(button);
}

function showError(message) {
  toast.textContent = message;
  toast.classList.add('visible');
  clearTimeout(showError.timer);
  showError.timer = setTimeout(() => toast.classList.remove('visible'), 3000);
}

function setConnection(online) {
  state.connected = online;
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

async function act(action, value) {
  const requestId = ++state.nextRequest;
  state.lastApplied = requestId;
  state.actionsInFlight += 1;
  applyOptimistic(action, value);
  try {
    const payload = value === undefined ? { action } : { action, value };
    const next = await request('/api/action', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload),
    });
    if (requestId >= state.lastApplied) {
      state.lastApplied = requestId;
      render(next);
    }
  } catch (error) {
    showError(error.message);
    setConnection(false);
  } finally {
    state.actionsInFlight -= 1;
  }
}

function copyState() {
  if (!state.latest?.ready) return null;
  return { ...state.latest, loops: state.latest.loops.map(loop => ({ ...loop })) };
}

function applyOptimistic(action, value) {
  const next = copyState();
  if (!next) return;

  if (action === 'record') {
    if (value && next.autoNext) {
      for (let offset = 1; offset <= next.loops.length; offset += 1) {
        const candidate = (next.currentLoop + offset) % next.loops.length;
        if (next.loops[candidate].playing > 0) {
          next.currentLoop = candidate;
          break;
        }
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
  }
  render(next);
}

function bindHold(id, action) {
  const button = document.querySelector(id);
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
  button.addEventListener('keydown', event => {
    if ((event.key === ' ' || event.key === 'Enter') && !held) {
      event.preventDefault();
      held = true;
      button.classList.add('pressed');
      act(action, true);
    }
  });
  button.addEventListener('keyup', event => {
    if (event.key === ' ' || event.key === 'Enter') release();
  });
  window.addEventListener('blur', release);
}

function render(next) {
  state.latest = next;
  setConnection(Boolean(next.ready));
  if (!next.ready) return;

  document.querySelector('#current-loop').textContent = next.currentLoop + 1;
  document.querySelector('#window-count').textContent = next.windows;
  document.querySelector('#window-output').textContent = next.windows;
  const selected = next.loops[next.currentLoop];
  document.querySelector('#mode').textContent = selected.recording === 1
    ? 'Recording' : selected.recording === 2 ? 'Overlaying'
      : next.blackout ? 'Blackout' : selected.playing === 2 ? 'Live' : selected.playing === 1 ? 'Loop' : 'Idle';

  document.querySelector('#record').classList.toggle('pressed', selected.recording === 1);
  document.querySelector('#overlay').classList.toggle('pressed', selected.recording === 2);
  document.querySelector('#blackout').classList.toggle('active', next.blackout);

  document.querySelectorAll('[data-toggle]').forEach(control => {
    const value = Boolean(next[control.dataset.toggle]);
    if (control.matches('input')) control.checked = value;
    else control.classList.toggle('active', value);
  });

  document.querySelector('#trail-amount').value = next.trailAmount;
  document.querySelector('#trail-value').textContent = `${Math.round(next.trailAmount * 100)}%`;

  document.querySelectorAll('.loop-button').forEach((button, index) => {
    const loop = next.loops[index];
    button.classList.toggle('active', index === next.currentLoop);
    button.classList.toggle('recording', loop.recording === 1);
    button.classList.toggle('overlaying', loop.recording === 2);
    button.classList.toggle('live-loop', loop.playing === 2);
    const mode = loop.recording === 1 ? 'Recording' : loop.recording === 2 ? 'Overlay'
      : loop.playing === 2 ? 'Live' : loop.playing === 1 ? `${loop.frames} frames`
        : loop.frames ? `${loop.frames} stored` : 'Empty';
    button.querySelector('small').textContent = mode;
  });
}

document.querySelectorAll('[data-action]').forEach(button => {
  button.addEventListener('click', () => act(button.dataset.action));
});
document.querySelectorAll('input[data-toggle]').forEach(input => {
  input.addEventListener('change', () => act(input.dataset.toggle, input.checked));
});
document.querySelector('#blackout').addEventListener('click', () => {
  act('blackout', !Boolean(state.latest?.blackout));
});

const trailAmount = document.querySelector('#trail-amount');
trailAmount.addEventListener('input', () => {
  document.querySelector('#trail-value').textContent = `${Math.round(trailAmount.value * 100)}%`;
});
trailAmount.addEventListener('change', () => act('trailAmount', Number(trailAmount.value)));

bindHold('#record', 'record');
bindHold('#overlay', 'overlay');

async function refresh() {
  if (state.actionsInFlight > 0) {
    setTimeout(refresh, 250);
    return;
  }
  const requestId = ++state.nextRequest;
  try {
    const next = await request('/api/state');
    if (requestId >= state.lastApplied) {
      state.lastApplied = requestId;
      render(next);
    }
  } catch (error) {
    setConnection(false);
  } finally {
    setTimeout(refresh, 250);
  }
}

refresh();
