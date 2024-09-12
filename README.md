ansible-proxmox
===============

**DO NOT BLINDLY USE THIS YET**
Very early alpha role used on test-servers.

An [Ansible](https://www.ansible.com/)-role which creates a docker-host with traditional and docker-compose support.

```diff
# Project maturity (- Dev|@ Staging|+ Prod):
- Dev
```


Requirements
------------

- Deployment requires a Proxmox VE 7/8 installation (role does currently not install)
- You need ansible [installed](./install_ansible.sh) and also the community general modules which might or migh not be preinstalled with your ansible-distribution.
- This role comes with a [script](./install) that might or might not setup Ansible correctly for you.

On most systems this will do the same:
´´´
dnf install ansible-core
ansible-galaxy collection install community.general
´´´
Note: Replace `dnf` with your package manager like `apt` for Ubuntu/Debian-based OS.

Role Variables
--------------
| Variable    | Mandatory | Description |
| ----------- | --------- | ----------- |
| TODO | no  | TODO |

TODO:
A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------
- Ansible control-node
- Proxmox installed on an endpoint

Note: Can be the same machine.

Example Playbook
----------------

    - hosts: proxmox
      roles:
      - ansible-proxmox

Author Information
------------------

[Harald Hauknes](https://github.com/harahauk)

License
-------

MIT License

See [LICENCE](./LICENCE) for the full text.


