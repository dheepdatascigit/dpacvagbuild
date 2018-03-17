# Packer and Vagrant build repository

This is repo has set of configurations to automate build virtual machines using packer and vagrant.

---

## Packer
- Packer will be used to build the base box.

### Usage -- Invoking the packer build template
Invoke `packer` to run a template like this:
```
packer build -only vmware-iso packer\ubuntu-16.04-amd64.json
```
### output

output will be in vagrant box format
'filename: ubuntu-16.04-amd64-vmware.box'

### add box to vagrant

```
vagrant box add ubuntu-16.04-amd64-vmware ubuntu-16.04-amd64-vmware.box
```

## Vagrant
- Vagrant will be used for customising the virtual machine with required settings and apps

### vagrant configuration given below
  - provisioning via shell scripts in dir `vag_scripts`
  - mount current directory as `/vagrant` in virtual machine
    - vagrant will ask for smb username password for mounting the directory
    - this is your windows username/password

### usage
  - start the virtual machine
    ```
    vagrant up --provider=vmware_workstation
    ```
- stop the virtual machine in windows (as it hangs with normal halt, so need to use the force key)
    ```
    vagrant halt --force
    ```
## Ansible
- Ansible will be used for the further provisioning and reconfiguring the base system and apps.
    - ansible playbooks are in directory `/vagrant/ansible`
        - commonaus.yaml
            - install git-core
            - install zsh
            - install ho my zsh
