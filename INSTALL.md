Instalar ArchLinux en Macbook Air 2013
======================================

Referencias

 - <http://codylittlewood.com/arch-linux-on-macbook-pro-installation/>
 - <http://vec.io/posts/use-arch-linux-and-xmonad-on-macbook-pro-with-retina-display>

Achicar partición de Mac OS X
-----------------------------

Se debe usar la utilidad de discos de Mac OS X

Crear imagen ArchLinux booteable
--------------------------------

Tan simple como `dd bs=512k if=archlinux.iso of=/dev/sdb`

Conectarse a la red
-------------------

Como en este momento no tenemos driver Wi-Fi para hardware Broadcom instalado, tendremos que conectarnos a la red usando métodos alternativos como un adaptador Ethernet a USB o Tethering (ver <https://wiki.archlinux.org/index.php/Android_Tethering>).

Particionar el disco
--------------------

(solucionado en las referencias)

Instalar
--------

(solucionado en las referencias)

Configuración básica
--------------------

(solucionado en las referencias)

Instalar el bootloader
----------------------

(solucionado en las referencias)

Instalar drivers Broadcom
-------------------------

Se debe instalar el paquete [broadcom-wl](https://aur.archlinux.org/packages/broadcom-wl/) del AUR.

Solucionar problema del backlight
---------------------------------

Hay un problema con el backlight que sucede cuando la computadora se va a dormir, al despertarse, solo se puede settear el nivel de brillo de la pantalla entre el máximo y el mínimo. Se han reportado bugs al respecto, el principal es este: <https://bugs.freedesktop.org/show_bug.cgi?id=67454>.

Instalar paquete [mba6x_bl-dkms](https://aur.archlinux.org/packages/mba6x_bl-dkms/) del AUR.

Configurar touchpad
-------------------

Ir al archivo `/etx/X11/xorg.conf.d/50-synaptics.conf` y añadir:

    Section "InputClass"
        Identifier "Custom modifications"

        # Deja un delay de 300 ms para procesar el tap (esto evita
        # taps con dos dedos que a veces son tomados como un doble tap)
        Option "MaxTapTime" "300"

        # Máximo movimento del dedo durante un tap para que no sea consi-
        # derado un evento de motion
        Option "MaxTapMove" "35"

        # Detecta la palma para evitar deshabilitar el touchpad al escribir
        Option "PalmDetect" "on"
        Option "PalmMinWidth" "15"

        # Mucha sensibilidad al movimiento
        Option "HorizHysteresis" "10"
        Option "VertHysteresis" "10"
    EndSection

Cambiar ubicación de las teclas
-------------------------------

Instalar el driver modificado hid-apple-eor.

CUPS
----

Instalar los paquetes con el siguiente comando:

    pacman -S  extra/cups extra/foomatic-db-nonfree extra/gutenprint community/splix

Para poder usar CUPS sin ser root, mirar lo siguiente: https://wiki.archlinux.org/index.php/CUPS#GNOME
