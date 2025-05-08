# flameos-repo

# How to "install" flameos-repo
Adding a repo inside your /etc/pacman.conf
```bash
[flameos-repo]
SigLevel = Optional DatabaseOptional
#Server = https://raw.githubusercontent.com/theflames-presence/$repo/refs/heads/main/$arch
Server = https://theflames-presence.github.io/flameos-repo/$arch
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
