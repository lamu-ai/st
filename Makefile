.PHONY: clean package install uninstall

clean:
	rm -rf src pkg
	rm *.tar.*
	rm *.diff
	cp -t . ../patches/st-delkey-0.8.4.diff ../patches/st-hidecursor-0.8.4.diff ../patches/st-newterm-0.8.4.diff

package:
	makepkg -o

install: clean package
	sudo make --directory=src/st-0.8.4 clean install

uninstall:
	sudo make --directory=src/st-0.8.4 clean uninstall

