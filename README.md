## Zookeeper Ansible Role

Installs and configures Zookeeper cluster on RHEL/CentOS 7/8 servers.

## Requirements

This installation requires Zookeeper; also note that this role requires root access, so either run it in a playbook with a global `become: yes`, or invoke the role in your playbook. Here is the example with the global `become: yes`:

    - hosts: all
      become: yes
      roles:
        - { role: bilalcaliskan.zookeeper }

## Role Variables

See the default values in 'defaults/main.yml'. You can overwrite them in 'vars/main.yml' if neccessary.

## Dependencies

None

## Example Inventory File

    [all]
    zookeeper01.example.com
    zookeeper02.example.com
    zookeeper03.example.com

## Example Playbook File

    - hosts: all
      become: yes
      roles:
        - { role: bilalcaliskan.zookeeper }

* Inside `vars/main.yml`*:

    kafka_version: 123.123

## License

MIT / BSD
