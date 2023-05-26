zypper up -y
zypper in -y vagrant vagrant-libvirt rsync python310 python310-pip
vagrant plugin install vagrant-libvirt
pip install -r requirements.txt
