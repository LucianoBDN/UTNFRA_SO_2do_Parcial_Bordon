1
2
3
4
5
6
7
8
9
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin --yes
echo "-----------------------------------------------------------------------"
ansible --version > /dev/null
echo "ansible instalado"
docker --version > /dev/null
echo "docker instalado"
echo "-----------------------------------------------------------------------"
EOF
chmod +x instalar.sh 
./instalar.sh 
sudo groupadd docker && sudo usermod -aG docker vagrant
sudo usermod -aG docker vagrant
id
sudo usermod -aG docker vagrant
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
cd RTA_Examen_20240627/
sudo fdisk
sudo fdisk -l
sudo fdisk /dev/sdd
pvcreate /dev/sdd1
sudo pvcreate /dev/sdd1
vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_datos /dev/sdd1
sudo pvs
sudo lvcreate -L +5m vgdatos -n lv_docker
sudo lvcreate -L +5m vg_datos -n lv_docker
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
df -h
sudo pvs
sudo vgs
sudo pvs
sudo lvs
sudo fdisk -l
sudo fdisk /dev/sdc
pvcreate /dev/sdc1
sudo pvcreate /dev/sdc1
sudo vgscreate vg_temp /dev/sdc1
sudo vgcreate vg_temp /dev/sdc1
lvcreate -L 521MB vg_temp -n lv_swap
sudo lvcreate -L 521MB vg_temp -n lv_swap
sudo vgs
sudo lvs
lvremove /dev/mapper/vg_temp-lv_swap
sudo lvremove /dev/mapper/vg_temp-lv_swap
sudo lvs
sudo lvcreate -L 521M vg_temp -n lv_swap
sudo lvs
mkswap /dev/mapper/vg_temp-lv_swap 
sudo mkswap /dev/mapper/vg_temp-lv_swap 
swapon
sudo swapon /dev/mapper/vg_temp-lv_swap
swapon
sudo pvs
sudo lvs
df -h
sudo lvs
swapon
sudo systemctl restastart docker
sudo systemctl restart docker
sudo systemctl status docker
cat Punto_A.sh 
cd ..
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
#!/bin/bash
CLAVE_USUARIO=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in `cat $LISTA | awk -F ',' '{print $1" "$2" "$3}'| grep -v ^#`
do




cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
#!/bin/bash
CLAVE_USUARIO=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in `cat $LISTA | awk -F ',' '{print $1" "$2" "$3}'| grep -v ^#`
do




cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
#!/bin/bash
CLAVE_USUARIO=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in `cat $LISTA | awk -F ',' '{print $1" "$2" "$3}'| grep -v ^#`
do




cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
#!/bin/bash
CLAVE_USUARIO=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in `cat $LISTA | awk -F ',' '{print $1" "$2" "$3}'| grep -v ^#`
do




cat /usr/local/bin/BordonAltaUser-Groups.sh
cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
#!/bin/bash
USUARIO_CLAVE=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in `cat $LISTA | awk -F ',' '{print $1" "$2" "$3}'| grep -v ^#`
do
USUARIO=$(echo
GRUPO=$(echo
DIR_HOME=$(echo $i | awk '{print $3}')
CLAVE=$(sudo grep $USUARIO_CLAVE /etc/shadow | awk -F ':' '{print $2}')
 $(sudo groupadd $GRUPO)
$(sudo mkdir -p $DIR_HOME)
$(sudo useradd -d $DIR_HOME -p $CLAVE -s /bin/bash -g $GRUPO $USUARIO)

done
IFS=$ANT_IFS
EOF
cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
USUARIO_CLAVE=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in \$(cat \$LISTA | awk -F ',' '{print \$1" "\$2" "\$3}'| grep -v ^#)
do
USUARIO=\$(echo
GRUPO=\$(echo
DIR_HOME=\$(echo \$i | awk '{print \$3}')
CLAVE=\$(sudo grep \$USUARIO_CLAVE /etc/shadow | awk -F ':' '{print \$2}')
\$(sudo groupadd \$GRUPO)
\$(sudo mkdir -p \$DIR_HOME)
\$(sudo useradd -d \$DIR_HOME -p \$CLAVE -s /bin/bash -g \$GRUPO \$USUARIO)
echo "\$(id \$USUARIO)"
done
IFS=\$ANT_IFS
EOF
sudo EOF
cat /usr/local/bin/BordonAltaUser-Groups.sh
cd /usr/local/bin/
cat << EOF > BordonAltaUser-Groups.sh
#!/bin/bash
USUARIO_CLAVE=\$1
LISTA=\$2
ANT_IFS=\$IFS
IFS=\$'\n'
for i in \$(cat \$LISTA | awk -F ',' '{print \$1" "\$2" "\$3}' | grep -v ^#)
do
USUARIO=\$(echo \$i | awk '{print \$1}')
GRUPO=\$(echo \$i | awk '{print \$2}')
DIR_HOME=\$(echo \$i | awk '{print \$3}')
CLAVE=\$(sudo grep \$USUARIO_CLAVE /etc/shadow | awk -F ':' '{print \$2}')
\$(sudo groupadd \$GRUPO)
\$(sudo mkdir -p \$DIR_HOME)
\$(sudo useradd -d \$DIR_HOME -p \$CLAVE -s /bin/bash -g \$GRUPO \$USUARIO)
echo "\$(id \$USUARIO)"
done
IFS=\$ANT_IFS
EOF
sudo EOF
sudo su
cd ..
sudo bash -c 'cat << EOF > /usr/local/bin/BordonAltaUser-Groups.sh
#!/bin/bash
USUARIO_CLAVE=\$1
LISTA=\$2
ANT_IFS=\$IFS
IFS=\$'\''\n'\''
for i in \$(cat \$LISTA | awk -F \',\' \'{print \$1" "\$2" "\$3}\' | grep -v ^#)
do
USUARIO=\$(echo \$i | awk \'{print \$1}\')
GRUPO=\$(echo \$i | awk \'{print \$2}\')
DIR_HOME=\$(echo \$i | awk \'{print \$3}\')
CLAVE=\$(sudo grep \$USUARIO_CLAVE /etc/shadow | awk -F \':\' \'{print \$2}\')
\$(sudo groupadd \$GRUPO)
\$(sudo mkdir -p \$DIR_HOME)
\$(sudo useradd -d \$DIR_HOME -p \$CLAVE -s /bin/bash -g \$GRUPO \$USUARIO)
echo "\$(id \$USUARIO)"
done
IFS=\$ANT_IFS
EOF
cat << 'EOF' > ~/BordonAltaUser-Groups.sh
#!/bin/bash
USUARIO_CLAVE=$1
LISTA=$2
ANT_IFS=$IFS
IFS=$'\n'
for i in $(cat $LISTA | awk -F ',' '{print $1" "$2" "$3}' | grep -v ^#)
do
USUARIO=$(echo $i | awk '{print $1}')
GRUPO=$(echo $i | awk '{print $2}')
DIR_HOME=$(echo $i | awk '{print $3}')
CLAVE=$(sudo grep $USUARIO_CLAVE /etc/shadow | awk -F ':' '{print $2}')
$(sudo groupadd $GRUPO)
$(sudo mkdir -p $DIR_HOME)
$(sudo useradd -d $DIR_HOME -p $CLAVE -s /bin/bash -g $GRUPO $USUARIO)
echo "$(id $USUARIO)"
done
IFS=$ANT_IFS
EOF
sudo mv ~/BordonAltaUser-Groups.sh /usr/local/bin/BordonAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/BordonAltaUser-Groups.sh
cd ..
ls
cd home/
cd vagrant/
pwd
cd UTN-FRA_SO_Examenes/202406/bash_script/
ls
cd ..
pwd
. /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
/usr/local/bin/BordonAltaUser-Groups.sh vagrant UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd ..
ls
cat /etc/passwd | awk -F: '{print $1}'
cd ..
ls
cat /etc/group | awk -F: '{print $1}'
cd RTA_Examen_20240627/
ls
