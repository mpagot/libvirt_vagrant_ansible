# Vagrant / Ansible deploy to libvirt

This project documents all needed step to crate a libvirt deployment using Vagrand and Ansible.

## Tools and dependency
A Dockerfile is provided to define all the tools needed to run this deployment.
All the deployment stages will be performed from within this image.
You also need a running virt server to run your VM. The virt server need to be already available and running.

Build the image:

```
$ podman build -f Dockerfile
```
## Run the deployment

Run the container:

```
$ podman run -it -v $(pwd):/work -v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock d4cde6ddcda0
```

from here everything else is executed from within it.

Create the VM, and run Ansible to "configure" it:

```
# cd /work/
# export IMAGE_URL="https://download.opensuse.org/repositories/Virtualization:/Appliances:/Images:/openSUSE-Leap-15.4/images/boxes/Leap-15.4.x86_64.json"
# export IMAGE_NAME="Leap-15.4.x86_64"
# vagrant up --provider=libvirt
```

## Some useful vagrant commands

Remote login to the VM

```
# vagrant ssh
```

Get the VM IP

```
# vagrant global-status
# vagrant ssh-config 96482f0
```

Run only Ansible again:

```
# vagrant provision
```

## Clean up

Delete the VM

```
# vagrand destroy
```
