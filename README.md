Utiliza o ansible para gerenciar maquinas windows

https://raw.githubusercontent.com/leandroscardua/Ansible-Windows/master/windows-ansible.jpg

 Programas:
--------
- Sistema Operacional : Linux/FreeBSD
- Ansible : 2.9.x
- Python: 3.x

 Requerimentos:
--------
- Habilitar acesso SSH no Linux/FreeBSB
- Acceso a internet, para baixar os arquivos necessarios

 Arquivos:
--------

    .
    ├── /controler-node/*.*                  # dentro desta pasta temos arquivos necessarios para instalacao/configuracao do ansible para diversas versoes do Linux/FreeBSD
    └── /client-node/windows/configure.ps1   # arquivo de configuração habilitar o acceso do ansible ao windows.

     
 Execucao:
--------

    wget {{ Link do arquivo de instalacao do ansible }}
    bash {{ install-control.sh }}
    wget {{ Link do arquivo de configuracao do ansible }}
    bash {{ config-ansible.sh  }}

