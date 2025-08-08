# flameos-repo

# How to "install" flameos-repo
Adding a repo inside your /etc/pacman.conf
```bash
[flameos-core]
SigLevel = Optional DatabaseOptional
#Server = https://raw.githubusercontent.com/flame-os/core/refs/heads/main/$arch
Server = https://flame-os.github.io/core/$arch
```

To search packages inside the repo
``` bash
pacman -Ss | grep "^flameos-repo"
```

Then the repositories and update your system with: sudo pacman -Syyu
And, then to install a package do 
```bash
sudo pacman -S name-of-packages
```
