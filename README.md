## Zookeeper Ansible Role

[![Build Status](https://travis-ci.org/bilalcaliskan/zookeeper-ansible-role.svg?branch=master)](https://travis-ci.org/bilalcaliskan/zookeeper-ansible-role)

Installs and configures Zookeeper cluster on RHEL/CentOS 7/8 servers.

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

> Please note that this role will ensure that `firewalld` systemd service on your servers are started and enabled. If your `firewalld` services are stopped and disabled, please modify below variable as false when running playbook:  
> ```yaml  
> start_firewall: false

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
