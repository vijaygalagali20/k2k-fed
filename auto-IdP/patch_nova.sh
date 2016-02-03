cd /opt/stack/nova
git remote add moc git://github.com/CCI-MOC/nova
git fetch
git checkout moc-modified

cd ~ && git clone https://github.com/CCI-MOC/python-novaclient.git
sudo pip uninstall -y python-novaclient
cd python-novaclient && sudo python setup.py install
