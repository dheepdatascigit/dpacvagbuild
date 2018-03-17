# Packer and Vagrant build repository

This is repo has set of configurations to automate build virtual machines using packer and vagrant.

---

## Packer
- Packer will be used to build the base box.
-- usage
### Invoking the template
Invoke `packer` to run a template like this:
```
packer build -only vmware-iso packer\ubuntu-16.04-amd64.json
```

## Vagrant
- Vagrant will be used for customising the virtual machine with required settings and apps

## Ansible
- Ansible will be used for the further provisioning and reconfiguring the base system and apps.
