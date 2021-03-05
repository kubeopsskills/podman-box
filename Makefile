install:
	@echo "Podman-box:: Installing..."
	sh ./prerequisites.sh
	sh ./install-podman-box.sh

uninstall:
	@echo "Podman-box:: Uninstalling..."
	vagrant destroy
