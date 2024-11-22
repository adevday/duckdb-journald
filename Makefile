include Makefile.shim

release:
	apt install -y autoconf libsystemd-dev python3.8 python3-pip
	update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
	update-alternatives --set python /usr/bin/python3.8
	ln -sf /usr/bin/python3.8 /usr/bin/python3
	python -m pip install MarkupSafe==2.0.0 Jinja2 meson
	$(MAKE) -f Makefile.shim $@