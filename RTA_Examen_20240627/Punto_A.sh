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
