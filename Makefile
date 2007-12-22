my_initramfs.cpio.gz:
	/usr/src/linux/usr/gen_init_cpio ./config.txt \
		|gzip -c >my_initramfs.cpio.gz
