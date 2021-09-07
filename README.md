# Zookeeper Ansible Role
[![CI](https://github.com/bilalcaliskan/zookeeper-ansible-role/workflows/CI/badge.svg?event=push)](https://github.com/bilalcaliskan/zookeepers-ansible-role/actions?query=workflow%3ACI)

Installs and configures [Apache Zookeeper](https://zookeeper.apache.org/) cluster on Redhat/Debian based hosts.

## Requirements
This role requires minimum Ansible version 2.4 and maximum Ansible version 2.9. You can install suggested version with pip:
```
$ pip install "ansible==2.9.16"
```

Also note that this role requires root access, so either run it in a playbook with a global `become: true`, or invoke the role in your playbook.

## Role Variables
See the default values in [defaults/main.yml](defaults/main.yml). You can overwrite them in [vars/main.yml](vars/main.yml) if neccessary or you can set them while running playbook.

Also please see the Redhat ansible_os_family specific variables in [vars/redhat.yml](vars/redhat.yml) and Debian ansible_os_family specific variables in [vars/debian.yml](vars/debian.yml).

> Please note that this role will ensure that `firewalld` systemd service on your servers are started and enabled by default. If you want to stop and disable `firewalld` service, please modify below variable as false when running playbook:
> ```yaml
> enable_firewalld: false


## Dependencies

None

## Examples
### Inventory

```
[all]
zookeeper01.example.com
zookeeper02.example.com
zookeeper03.example.com
```

### Installation
```yaml
- hosts: all
  become: true
  roles:
    - role: bilalcaliskan.zookeeper
      vars:
        install: true
        enable_persistency: false
        version: 3.7.0
```

### Uninstallation
```yaml
- hosts: all
  become: true
  roles:
    - role: bilalcaliskan.zookeeper
      vars:
        install: false
```

## Development
This project requires below tools while developing:
- [Ansible 2.4 or higher](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [pre-commit](https://pre-commit.com/)
- [ansible-lint](https://ansible-lint.readthedocs.io/en/latest/installing.html#using-pip-or-pipx) - required by [pre-commit](https://pre-commit.com/)
- [Bash shell](https://www.gnu.org/software/bash/) - required by [pre-commit](https://pre-commit.com/)

## License
Apache License 2.0
