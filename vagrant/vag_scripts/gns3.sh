
sudo apt-get -y install python3-setuptools
sudo apt-get -y install python3-aiohttp
sudo apt-get -y install python3-psutil
sudo apt-get -y install python3-jsonschema

git clone https://github.com/GNS3/gns3-server.git

cd gns3-server
sudo python3 setup.py install

# gns3server
# To run tests use:

# py.test -v
