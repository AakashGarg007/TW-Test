# FT-test

This demo contains 2 parts:

## CI serive for docker images.
1. App is written in python and build on base python-alphine image.
2. Sample container test cases are written using dgoss framework.
3. Github's "Actions" is used as CI service, whenever they is a checkin build is triggered.
4. CI Build contains building docker image and running dgoss test cases.
5. I have not added pushing to docker hub in CI build, hence manually pushed.

## Seting up complete infra
1. Vagrant is used for local VM provisioning using image "centos/7".
2. It also provisions Ansible and run ansible playbook, also copy necessary files to VM.
3. Ansible then installs required packages like docker, minikube, kubectl and deploys python app.


## Running Setup

1. Install Vagrant from https://www.vagrantup.com/
2. Clone this repo and change dir to "FT-test"
3. Run this cmd to initiate setup
```
vagrant up
```
4. Once it completes ssh to VM and curl on python service url
```
vagrant ssh
minikube service ft-demo --url | xargs curl
```

#### This solution is tested on 
1. Vagrant 2.2.9
2. macOS v10.15.6