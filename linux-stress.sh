#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1> Hello World from RDS EC2 Instance $(hostname -f)</h1>" > /var/www/html/index.html

# --------------------------------------------------
# install stress utility on Linux
sudo amazon-linux-extras install epel -y
sudo yum install stress -y

# Use --timeout to stop it automatically e.g.
stress --cpu 4 --timeout 60s

# Note: For AL 2023 you can simply run the install command, no need to to install epel.
