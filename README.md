## How to "install" asiraos-core

### 1. Import the GPG key

```bash
curl -sSL https://asiraos.github.io/core/asiraos-core.pubkey.asc | sudo pacman-key --add -
```

Adding a repo inside your /etc/pacman.conf

```bash
[asiraos-core]
SigLevel = Optional TrustAll
Server = https://asiraos.github.io/core/$arch
```

To search packages inside the repo

```bash
pacman -Ss | grep "^asiraos-core"
```

Then the repositories and update your system with: sudo pacman -Syyu
And, then to install a package do

```bash
sudo pacman -S name-of-packages
```
