#Rasp Pi Notlari

##sd card

df-h

output:.....
       .....
       /dev/sdd1

umount /dev/sdd1

dd bs=4M if=2016-.....-raspbian-jessie.img of=/dev/sdd

ya da varsa
dvfldd bs=.....


##checking
dd bs=4M if=/dev/sdd of=from-sd-card.img
truncate --reference 2016-05-27-raspbian-jessie.img from-sd-card.img
diff -s from-sd-card.img 2016-05-27-raspbian-jessie.img

sync

remove sd card

#internet ayarlari

statik ip vs yapmak icin

/etc/dhcpcd.d yi editlemek gerek

interface eth0
static ip_adress=192.168.1.17/24
static routers=192.168.1.1
static domain_name_servers=192.168.1.1
