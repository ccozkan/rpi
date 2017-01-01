### RaspberryPi Bluetooth Speaker

#### Required
  * RaspberryPi Model 3B
  * Speakers
  * Raspbian 2016-11-25 or RetroPie 4.1 is tested with Android 6.0.1

#### Install Dependency Packages
  
  

  	

    sudo apt-get install bluez pulseaudio-module-bluetooth python-gobject python-gobject-2
#### Pairing
  
    bluetoothctl:
      scan on
      pairable on
      discoverable on
      trust xx:xx:xx:xx:xx:xx(your phone bluetooth mac) (tab key works here)
      
Click to connect and try to pair it on your PHONE. Otherwise you wont be able to connect with bluetooth from your phone.youd be able to connect from retropie to phone with connect xx:xx:xx:(mac adrress) but its too much work since sometimes there might need to restart the connection.

After pairing you can change discoverability of your pi by

    bluetoothctl
    discoverable off
    