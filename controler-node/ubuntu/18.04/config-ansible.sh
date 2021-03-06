folder=ansible

cd ~/
mkdir $folder
cd $folder
mkdir log
mkdir roles
mkdir playbooks

cp /etc/ansible/ansible.cfg ~/$folder/ansible.cfg

echo "export ANSIBLE_CONFIG=~/$folder/ansible.cfg" >> ~/.bashrc

sed -i 's+#log_path = /var/log/ansible.log+log_path = ~/'$folder'/log/ansible.log+g' ansible.cfg

sed -i 's+#roles_path    = /etc/ansible/roles+roles_path = ~/'$folder'/roles+g' ansible.cfg
