#! /bin/bash
# extraplugins.sh - auto-installation script for some extra minqlx plugins

cd /home/qlserver
echo "Downloading tjone270-minqlx-plugins..."
mkdir /home/qlserver/tjone270-minqlx-plugins
cd /home/qlserver/tjone270-minqlx-plugins
git clone https://github.com/tjone270/Quake-Live/minqlx-plugins
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/tjone270-minqlx-plugins/Quake-Live/minqlx-plugins/* .

cd /home/qlserver
echo "Downloading cstewart90-minqlx-plugins..."
mkdir /home/qlserver/cstewart90-minqlx-plugins
cd /home/qlserver/cstewart90-minqlx-plugins
git clone https://github.com/cstewart90/minqlx-plugins
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/cstewart90-minqlx-plugins/minqlx-plugins/* .

cd /home/qlserver
echo "Downloading dsverdlo-minqlx-plugins..."
mkdir /home/qlserver/dsverdlo-minqlx-plugins
cd /home/qlserver/dsverdlo-minqlx-plugins
git clone https://github.com/dsverdlo/minqlx-plugins
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/dsverdlo-minqlx-plugins/minqlx-plugins/* .

cd /home/qlserver
echo "Downloading x0rnn-minqlx-plugins..."
mkdir /home/qlserver/x0rnn-minqlx-plugins
cd /home/qlserver/x0rnn-minqlx-plugins
git clone https://github.com/x0rnn/minqlx-plugins
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/x0rnn-minqlx-plugins/minqlx-plugins/* .

echo "Done."
exit
