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
