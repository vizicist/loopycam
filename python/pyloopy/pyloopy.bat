set httpaddr="httpaddr:127.0.0.1"
set httpport="httpport:7777"
set oscoaddr="oscoutaddr:localhost"
set oscoport="oscoutport:3333"
set processor="processor:NthControlProcessor"
set debug="-d"

set main=pyloopy.py

python %main% %debug% server %oscoaddr% %oscoport% %processor% %httpaddr% %httpport%
