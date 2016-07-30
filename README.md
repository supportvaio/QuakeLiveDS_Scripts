# Quake Live Dedicated Server

## Autonomous Server System, in Bash Script.

_This reporitory is a clone of [tjone270's](https://github.com/tjone270/QuakeLiveDS_Scripts)._

The scripts/mappools/factories/configs from here are currently live on _let's start cooking_ servers.

To install Quake Live Dedicated Server using these scripts, you'll need an Ubuntu 14.04 or 16.04 (it works fine on virtual machine, you can use something like [Virtualbox](https://virtualbox.org)).

1. Fork this repository 
2. Clone your fork (_git clone https://github.com/YOURUSERNAME/QuakeLiveDS_Scripts_)
3. Execute _sudo sh QuakeLiveDS_Scripts/autoconfig-server/quakeinstall-root.sh_
4. Switch to qlserver user (_su - qlserver_), clone this repo again to qlserver's home directory (_git clone https://github.com/YOURUSERNAME/QuakeLiveDS_Scripts_)
5. Execute _sh QuakeLiveDS_Scripts/autoconfig-server/quakeinstall-qlserver.sh_ as qlserver
6. _sh QuakeLiveDS_Scripts/autoconfig-server/minqlx.sh_ for minqlx
7. _sh QuakeLiveDS_Scripts/autoconfig-server/extraplugins.sh_ for extra minqlx plugins
8. _cd ~_
9. _./quakeconfig.sh_
10. _./quakeupdate.sh_
11. PROFIT

You will need to change _dark-saber_ to your GitHub username in _quakeconfig.sh_ and _quakeupdate.sh_. Also, you'll need to enter your qlstats server password to _~/localConfig-rconPassword-purgery.txt_. Global server settings are in _QuakeLiveDS_Scripts/config/server.cfg_, settings of specific servers are in _~/quakestart.sh_. Enjoy!

