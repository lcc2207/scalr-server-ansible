Role Name
=========

This role will install and configure Scalr on a 6 node setup

Requirements
------------

- Ansible installed
- hosts file setup with the following headers
  [mysql]
  [proxy]
  [influxdb]
  [worker]

  Example Hosts:
  [mysql]
  13.56.79.251
  18.144.33.250

  [proxy]
  13.56.246.51
  54.215.152.142

  [influxdb]
  54.241.186.90

  [worker]
  18.144.55.45

Role Variables
--------------

Role variables are set in the 'vars.yml' file

``` yaml
---
endpoint: 172.31.19.47
mysql:
  - { name: '172.31.20.73', id: '1' }
  - { name: '172.31.31.215', id: '2' }
appserver:
  - { name: '172.31.19.47' }
  - { name: '172.31.26.92'}
worker: 172.31.19.201
influxdb: 172.31.17.108
path_to_license: /tmp/license.json
path_to_secrets: /tmp/scalr-server-secrets.json

```

Dependencies
------------

- a license.json file from your Scalr team
- a scalr-server-secrets.json file - this can be either be created manually or by running "scalr-server-manage wizard" on a box with
  scalr-server installed

Example deployment command
----------------
ansible-playbook -i ./hosts main.yml -u <os_user> --private-key xxx.pem

Notes
----------------
On Ubuntu 16 and up you will need to add run

ansible-playbook -i ./hosts main.yml -u <os_user> --private-key xxx.pem -e 'ansible_python_interpreter=/usr/bin/python3'

License
-------

BSD
