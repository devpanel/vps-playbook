# Ansible VPS playbook on Devpanel
## Introduction
This guide provides instructions on how to use the VPS playbook to deploy your application on Devpanel to your own VPS.


## init-vps.yml
Installs the required packages (docker, docker-compose, etc.) on your VPS.
## deploy-to-vps.yml
This file allows you to deploy your application to your VPS and run `.devpanel/re-config.sh` to config your application.

## trigger-vps-webhook.yml
You can trigger events on your VPS and then run your own commands in `.devpanel/config.yml`


## Contributing
Please feel free to contribute by submitting issues or pull requests.

## License
This project is licensed under the [MIT License](LICENSE).
