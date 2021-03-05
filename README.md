# Podman Box

Podman Box helps you quickly start with [Podman](https://podman.io/) on [macOS Big Sur](https://www.apple.com/macos/big-sur/) and macOS newer version onward just a few minutes.

## Easy Install with make
- install with `make install`
- uninstall with `make uninstall`

## Prerequisites

To launch the Podman Box, you're required to install the following prerequisites dependencies:
- sshpass
- virtualbox
- vagrant

Which you can simply done with the "prerequisites.sh" script.

```sh
$ ./prerequisites.sh
```

## Installing the Podman Box

After you have installed the prerequisites dependencies, you can install the Podman Box with the "install-podman-box.sh" script.

```sh
$ ./install-podman-box.sh
```

Then, have fun with Podman!

## Uninstalling the Podman Box

You can simply delete the box with "vagrant destroy" command.

```sh
$ vagrant destroy
```
