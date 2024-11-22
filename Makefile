include Makefile.shim

release:
	apt install -y autoconf libsystemd-dev python3.7 python3.7-pip
	update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
	update-alternatives --set python /usr/bin/python3.7
	python3 -m pip install Jinja2 meson
	$(MAKE) -f Makefile.shim $@ || true
	cat /vcpkg/buildtrees/libsystemd/config-x64-linux-dbg-err.log