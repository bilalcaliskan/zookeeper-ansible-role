## Zookeeper Ansible Role

[![CI](https://github.com/bilalcaliskan/zookeeper-ansible-role/workflows/CI/badge.svg?event=push)](https://github.com/bilalcaliskan/zookeepers-ansible-role/actions?query=workflow%3ACI)

Installs and configures Zookeeper cluster.

### Requirements

This installation requires Zookeeper; also note that this role requires root access, so either run it in a playbook with a global `become: yes`, or invoke the role in your playbook. Here is the example with the global `become: yes`:

```yaml
- hosts: all
  become: true
  roles:
    - role: bilalcaliskan.zookeeper
      vars:
        simple_role_var: foo
```

### Role Variables
See the default values in [defaults/main.yml](defaults/main.yml). You can overwrite them in [vars/main.yml](vars/main.yml) if neccessary or you can set them while running playbook.

Also please see the Redhat ansible_os_family specific variables in [vars/redhat.yml](vars/redhat.yml) and Debian ansible_os_family specific variables in [vars/debian.yml](vars/debian.yml).

> Please note that this role will ensure that `firewalld` systemd service on your servers are started and enabled by default. If you want to stop and disable `firewalld` service, please modify below variable as false when running playbook:  
> ```yaml  
> enable_firewalld: false


### Dependencies

None

### Example Inventory File

```
[all]
zookeeper01.example.com
zookeeper02.example.com
zookeeper03.example.com
```

### Example Playbook File For Installation

```yaml
- hosts: all
  become: true
  roles:
    - role: bilalcaliskan.zookeeper
      vars:
        install: true
        enable_persistency: false
```

Inside [vars/main.yml](vars/main.yml)*:
```yaml
version: 3.6.0
```

### Example Playbook File For `Ununinstallation`

```yaml
- hosts: all
  become: true
  roles:
    - role: bilalcaliskan.zookeeper
      vars:
        install: false
```

### License

MIT / BSD
