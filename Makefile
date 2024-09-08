# files
entry = neovide.desktop
icon = neovide.png
file = $(entry) $(icon)
target = target/release

# applications and icons dirs
apps-local = ~/.local/share/applications
icons-local = ~/.icons
apps-system = /usr/share/applications
icons-system = /usr/share/applictions

.PHONY : help
help :
	@echo recipes: install, uninstall, install-sys, uninstall-sys, release, clean

#  _   _      __  _____   __    _     _    
# | | | |\ | ( (`  | |   / /\  | |   | |   
# |_| |_| \| _)_)  |_|  /_/--\ |_|__ |_|__

.PHONY : install
install :
	cp $(entry) $(apps-local)
	cp $(icon) $(icons-local)

.PHONY : instal
instal : install

.PHONY : install-sys
install-sys :
	cp $(entry) $(apps-system)
	cp $(icon) $(icons-system)

.PHONY : instal-sys
instal-sys: install-sys

#  _     _      _   _      __  _____   __    _     _    
# | | | | |\ | | | | |\ | ( (`  | |   / /\  | |   | |   
# \_\_/ |_| \| |_| |_| \| _)_)  |_|  /_/--\ |_|__ |_|__

.PHONY : uninstall
uninstall :
	rm $(entry) $(apps-local)
	rm $(icon) $(icons-local)

.PHONY : uninstal
uninstal : uninstall

.PHONY : uninstall-sys
uninstall-sys :
	rm $(entry) $(apps-system)
	rm $(icon) $(icons-system)

.PHONY : uninstal-sys
uninstal-sys : uninstall-sys

#  ___  _____  _     ____  ___  
# / / \  | |  | |_| | |_  | |_) 
# \_\_/  |_|  |_| | |_|__ |_| \

.PHONY : release
release :
	@read -p 'Provide version number for release (can be zero-length): ' VER; \
	if [ -n "$$VER" ]; then \
		VER=-$$VER; \
	fi ; \
	mkdir -p $(target)"$${VER}"/ ; \
	tar -ac -f $(target)"$${VER}"/neovide-desktop"$${VER}".tar.xz $(file)

.PHONY : clean
clean :
	-rm -r ./target/
