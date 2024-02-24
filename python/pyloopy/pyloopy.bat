set httpaddr="httpaddr:127.0.0.1"
set httpport="httpport:7777"
set min="midiin:LPK25"
set mout="midiout:Yoke.*5"
set oscoaddr="oscoutaddr:localhost"
set oscoport="oscoutport:3333"
set processor="processor:NthControlProcessor"
set debug="-d"

set main=pyloopy.py

python %main% %debug% server %min% %mout% %oscoaddr% %oscoport% %processor% %httpaddr% %httpport%
