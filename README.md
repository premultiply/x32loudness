# x32loudness
An realtime EBU R128 loudness meter display for Behringer X32 audio mixing console (and other USB audio devices)

![](https://raw.githubusercontent.com/premultiply/x32loudness/master/example.jpg)

System requierements:
Raspberry Pi 3
Raspbian Jessie

Options:
Raspberry LCD Touchscreen & Case
Footswitch or other GPIO-Buttons


Settings:
/boot/config.txt:

    dtparam=audio=on
    enable_uart=0
    
    #LCD Touchscreen display configuration
    lcd_rotate=2
    disable_touchscreen=1
    
    #Disable useless wireless stuff
    dtoverlay=pi3-disable-wifi
    dtoverlay=pi3-disable-bt
    
    #GPIO3 Shutdown/Reboot Button
    dtoverlay=gpio-shutdown
    
    #GPIO4 Quit/Reset Metering Button/Footswitch
    dtoverlay=gpio-key,gpio=4,keycode=16,label="KEY_Q",gpio_pull=up
    
    #GPIO17 Toogle screen Button/Footswitch
    dtoverlay=gpio-key,gpio=17,keycode=17,label="KEY_W",gpio_pull=up
    
    #GPIO25 Pause/Still/Freeze Button/Footswitch
    dtoverlay=gpio-key,gpio=25,keycode=25,label="KEY_P",gpio_pull=up


/etc/apt/sources.list:

    deb ftp://ftp.deb-multimedia.org jessie main


Prepare:

    sudo systemctl disable dphys-swapfile
    sudo systemctl disable hciuart.service
