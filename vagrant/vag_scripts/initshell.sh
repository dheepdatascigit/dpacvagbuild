echo I am provisioning...
date > /etc/vagrant_provisioned_at

# install dheep public key
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAhSck+yZwANO3FwsHc3CEqv/k7yO/tPmY9r2kbBjVYKh7RaG5W9TC+MrnbN5UTNyLZRyTENHOa5Bv++mYqeCBe1c10i2hyGu5ieui29Ep7cXYs7+m7nstX+h5VyAeBT6aTHQiGrUTTkaUsnvnPA7fA0lPmFMdooTaYLWfWIY1Zb/Iosa415kAhPpoUJ8blCwhsxuyK2Nns6PY22gmeAjMD015bulHUZzg5ACt8vJU3OWLWp1P5BSv9fHvDkaTGfSLLDCWVRJ78pV7U8d9ONKDN/aWABAlkkRBLk6v6rZAbWaFvLpeHSEiVSARS6jlS5OZfI46z1KuHgH2do+UTaxl4w== rsa-key-20180223" >> ~vagrant/.ssh/authorized_keys

# update apt
sudo apt-get update

# install ansible
sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
