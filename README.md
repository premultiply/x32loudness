# x32loudness
An EBU R128 loudness meter display for Behringer X32 audio mixing console

System requierements:
Rasbian Jessie


Settings:
/boot/config.txt:

dtparam=audio=on
enable_uart=0

lcd_rotate=2
disable_touchscreen=1


dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt


#GPIO3 Shutdown/Reboot
dtoverlay=gpio-shutdown

#GPIO4 Quit/Reset Metering
dtoverlay=gpio-key,gpio=4,keycode=16,label="KEY_Q",gpio_pull=up


#GPIO17 Toogle screen
dtoverlay=gpio-key,gpio=17,keycode=17,label="KEY_W",gpio_pull=up

#GPIO25 Pause/Still/Freeze
dtoverlay=gpio-key,gpio=25,keycode=25,label="KEY_P",gpio_pull=up


Prepare:
sudo systemctl disable dphys-swapfile
sudo systemctl disable hciuart.service
