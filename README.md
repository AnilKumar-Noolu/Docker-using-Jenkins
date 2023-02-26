# Docker-using-Jenkins

This Repository mainly consists of building a docker image using the Dockerfile written in the Repo and identifying whether the docker image is correctly build or not.

-> Here we will be using hostname as a string parameter as we need to ssh into the virtual machine opn which the docker is installed, generally the value in hostname will be ec2-user@private_ip of that instance.

->Also [ec2-instance-key-pair] is nothing but the key pair that we use in EC2 instance to login, we will add it to Jenkins by use of Manage Credentials section.

