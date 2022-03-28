folder=ansible
usera=ansible

echo 'Configuring folder tree'

cd /home/$usera
mkdir $folder
cd $folder
mkdir log
mkdir roles
mkdir playbooks

echo 'Changing the ansible configuration'

cp /etc/ansible/ansible.cfg /home/$usera/$folder/ansible.cfg
echo "export ANSIBLE_CONFIG=/home/$usera/$folder/ansible.cfg" >> ~/.bashrc
sed -i 's+#log_path = /var/log/ansible.log+log_path = /home/$usera/$folder/log/ansible.log+g' ansible.cfg
sed -i 's+#roles_path = /etc/ansible/roles+roles_path = /home/$usera/$folder/roles+g' ansible.cfg

echo 'Reloading terminal'

exec bash
