echo "Desinstalando el módulo por defecto"
modprobe -r hid_apple

echo "Instalando el módulo personalizado"
insmod hid-apple-eor.ko

zenity --info

echo "Desinstalando el módulo personalizado"
rmmod hid_apple_eor

echo "Instalando el módulo por defecto"
modprobe hid_apple