sudo yum update -y
sudo amazon-linux-extras install ansible2
sudo apt-add-repository -y ppa:ansible/ansible
yum install python
yum install python-pip
pip install ansible
ansible --version
useradd ansadmin
passwd ansadmin
echo "ansadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sudo su - ansadmin
ssh-keygen

yum install docker

# start docker services 
service docker start
service docker start 

# add user to docker group 
usermod -aG docker ansadmin

