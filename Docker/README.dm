======Install Docker in amazone Linux ===========
$ sudo yum update -y
$ sudo yum install docker -y
$ sudo service docker start


# add ec2-user to docker group by executing below comand
$ sudo usermod -aG docker ec2-user

# Restart the session
$ exit 

# then press  'R' to restart the session (Mobaxtream)

# Verify docker installation
$ docker -v
