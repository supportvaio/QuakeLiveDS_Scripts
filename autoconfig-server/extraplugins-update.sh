#! /bin/bash
# extraplugins.sh - auto-installation script for some extra minqlx plugins

cd /home/qlserver
echo "Updating tjone270-minqlx-plugins..."
cd /home/qlserver/tjone270-minqlx-plugins
git pull
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/tjone270-minqlx-plugins/Quake-Live/minqlx-plugins/* .

cd /home/qlserver
echo "Updating cstewart90-minqlx-plugins..."
cd /home/qlserver/cstewart90-minqlx-plugins
git pull
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/cstewart90-minqlx-plugins/minqlx-plugins/* .

cd /home/qlserver
echo "Updating dsverdlo-minqlx-plugins..."
cd /home/qlserver/dsverdlo-minqlx-plugins
git pull
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/dsverdlo-minqlx-plugins/minqlx-plugins/* .

cd /home/qlserver
echo "Updating x0rnn-minqlx-plugins..."
cd /home/qlserver/x0rnn-minqlx-plugins
git pull
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/x0rnn-minqlx-plugins/minqlx-plugins/* .

cd /home/qlserver
echo "Updating x0rnn-minqlx-plugins-1 (Race)..."
cd /home/qlserver/x0rnn-minqlx-plugins-1
git pull
cd /home/qlserver/steamcmd/steamapps/common/qlds/minqlx-plugins/
ln -s /home/qlserver/x0rnn-minqlx-plugins-1/minqlx-plugins-1/* .

echo "Done."
exit
