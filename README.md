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