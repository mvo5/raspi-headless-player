This is a project to make the raspi a easy to use
headless audio player.

The notes below need some cleanup and love.

You need:
$ sudo apt-get install gir1.2-gudev-1.0 gstreamer1.0

To auto-start edit /etc/inittab and add it there.

Add snd-pcm-oss to /etc/modules
(see http://blog.pi3g.com/tag/gstreamer/)

Add this to /etc/asound.conf:
"""
pcm.mmap0 {
type mmap_emul;
slave {
pcm "hw:0,0";
}
}
pcm.!default {
type plug;
slave {
pcm mmap0;
}
}
"""

You may consider something like this in rc.local:
"""
mount -o remount,ro /
mount --bind /var/log /var/log
mount -o remount,rw /var/log
"""
