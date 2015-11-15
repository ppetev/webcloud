# webcloud
WebCloud project for pretending there are no PaaS-es out there

## How to use

1. install virtualbox
2. install vagrant
3. install maven
4. go to `/application` and execute `./buildapp.sh`
5. go to `/vagrant` directory
6. execute `vagrant up`
  * Linux users:
    + if the output starts with "Bringing machine 'default' up with 'libvirt' provider...", then execute: `vagrant up --provider virtualbox`
7. wait for ubuntu box, docker provisioner, images to download
  * cygwin users:
    + you have to have openssh installed

You can now go to the box an play around with `vagrant ssh`

Port forwarding is set up so host machine can se the two "Wildflies" - try going to http://localhost:9081 or http://localhost:9082 on your machine.

### Loadbalancing

There is a loadbalancer installed (GoRouter) as well. It will listen on port 8081 (mapped to 8080 on the host machine). In order to use it you have to add the following resolution configuiration in your hosts file:

`127.0.0.1 my.cloud.com`

GoRouter will then proxy all the requests to URLs http://my.cloud.com/...


## Issues on Linux?

If upon starting vagrant VirtualBox reports that it is not usable on your machine, make sure you recompile its modules by running as root:
`/etc/init.d/vboxdrv setup`

If your vagrant VM falls into 'guru meditation' state, make sure that you are running with kernel older than 4.2. This will be fixed in version 4.3.32 of VirtualBox. More information (including a workaround for newer kernels) can be found here: https://www.virtualbox.org/ticket/14531

## Proxy issues?

1. install
  * `$ vagrant plugin install vagrant-proxyconf`
    + this will enable setting all kinds of proxy environment variables
  * set up your proxy real values in `Vagrantfile`

## Experimental (AWS)

`/vagrant-aws` directory is experimental - for working with Amazon EC2 as provider.

### Prerequisites

* cygwin users:
  + you have to have rsync installed
  + create symbolic link so `/c` and `/d` are drives
    - `$ ln -s /cygdrive/c /c`
    - `$ ln -s /cygdrive/d /d`
* you have to have an Amazon AWS account :)
  + generate keypair
    - important: `chmod 700 <your local .pem>`
  + generate access key and secret (in AWS IAM)
  + default security group - inbound: "All trafic" for source "My IP"

### What to do next

1. `$ vagrant plugin install vagrant-aws`
2. `$ vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box`
3. copy the Vagrantfile from /vagrant-aws folder in this project
4. `$ vagrant up --provider=aws`
5. Enjoy

## Misc

* How to start simple http server for testing
  + `python3 -m http.server 9081`