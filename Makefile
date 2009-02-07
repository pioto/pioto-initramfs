#my_initramfs.cpio: config.txt init
#	/usr/src/linux/usr/gen_init_cpio ./config.txt \
#		>my_initramfs.cpio

my_initramfs.cpio.gz: config.txt init
	/usr/src/linux/usr/gen_init_cpio ./config.txt \
		|gzip -c >my_initramfs.cpio.gz

clean:
	rm -f my_initramfs.cpio.gz
