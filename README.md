# webcloud
WebCloud project for pretending there are no PaaS-es out there

## How to use

1. install virtualbox
2. install vagrant
3. go to `/vagrant` directory
4. execute `vagrant up`
5. wait for ubuntu box, docker provisioner, images to download

You can now go to the box an play around with `vagrant ssh`

Port forwarding is set up so host machine can se the two "Wildflies" - try going to http://localhost:8081 on your machine

## Experimental (AWS)

`/vagrant-aws` directory is experimental - for working with Amazon EC2 as provider.

### Prerequisites

* cygwin users:
  + you have to have rsync installed
  + `$ ln -s /cygdrive/d /d`
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
