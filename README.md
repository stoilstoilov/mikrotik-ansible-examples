# mikrotik-ansible-examples
Examples of Ansible usage for Mikrotik configuration

This repository provides several examples used during presentation of Ansible capabilities for managing Mikrotik devices.

## apply_basic_config.yml

Applies hostname and other basic configurations

## apply_default_firewall.yml

Applies some default firewall configuration to allow SSH, API and WinBox traffic.

## apply_default_firewall_v2.yml

Applies list of firewall rules, checking if the rule already exists

## apply_vlan_config.yml

Applies a vlan configuration

## apply_routeros_upgrade.yml

Download an upgrade package and reboot routers to install new version

## backup_configuration.yml

Backups the RouterOS configuration and fetches the file


## Notes

#### Basic response check

ansible mikrotik_routers -m ping -i inventory.ini

#### Apply basic configuration - hostname and DNS server

ansible-playbook apply_basic_config.yml -i inventory.ini

#### Apply basic firewall

ansible-playbook apply_basic_firewall.yml -i inventory.ini

#### Reset configuration

ansible-playbook reset_configuration.yml -i inventory.ini

#### Apply better basic firewall

ansible-playbook apply_basic_firewall.yml -i inventory.ini

#### Upgrade RouterOS

ansible-playbook apply_routeros_upgrade.yml --limit mikrotik_routers[2:4] -i inventory.ini