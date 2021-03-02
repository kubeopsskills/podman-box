#!/bin/bash
echo "Installing podman remote client"
brew install podman

echo "Provision podman virtual machine"
vagrant up

echo "Configure podman virtual machine private key"
rm -rf ~/.ssh/known_hosts
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@127.0.0.1 -p 2222

echo "Configure podman remote client to remote to podman virtual machine remote service"
ssh-add ~/.ssh/id_rsa
export CONTAINER_HOST=ssh://vagrant@127.0.0.1:2222/run/user/1000/podman/podman.sock

echo "Verify if podman is running"
podman run --name nginx -d nginx
podman ps