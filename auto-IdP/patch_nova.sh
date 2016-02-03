# modify nova codebase
cd /opt/stack/nova
git remote add moc git://github.com/CCI-MOC/nova
git fetch
git checkout moc-modified

# modify python-novaclient
cd ~ && git clone https://github.com/CCI-MOC/python-novaclient.git
sudo pip uninstall -y python-novaclient
cd python-novaclient && sudo python setup.py install

# modify nova.conf
cd /home/ubuntu/IdP && python modify_novaconf.py

# restart nova-api and nova-cpu
screen -p 2 -X stuff "^C^[OA\n" 
screen -p 7 -X stuff "^C^[OA\n" 
screen -p 13 -X stuff "^C^[OA\n" 
