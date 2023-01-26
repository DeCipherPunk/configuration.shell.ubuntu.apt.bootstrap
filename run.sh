#!/bin/sh
echo "Downloading required scripts"
git clone https://github.com/DeCipherPunk/configuration.shell.ubuntu.apt.update.git /opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.update
git clone https://github.com/DeCipherPunk/configuration.shell.ubuntu.apt.upgrade.git /opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.upgrade
git clone https://github.com/DeCipherPunk/configuration.shell.ubuntu.apt.dependencies.git /opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.dependencies
echo "Making scripts executable"
sudo chmod +x /opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.update/run.sh
sudo chmod +x /opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.upgrade/run.sh
sudo chmod +x /opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.dependencies/run.sh
echo "Run Apt Update"
/opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.update/run.sh
echo "Run Apt Upgrade"
/opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.upgrade/run.sh
echo "Installing Dependencies"
/opt/bootstrap/shell-scripts/configuration.shell.ubuntu.apt.dependencies/run.sh

# Config Books after this
echo "Bootstrap Completed successfully, Ready Ansible showdown"