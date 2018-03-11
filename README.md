# Simple MOTD for Debian Desktop
Ubuntu-like "message of the day" screen for Debian desktop terminals, without the requirement of PAM

(Can be used in any Linux distro, but only tested in Debian)

![debian motd screenshot](https://raw.githubusercontent.com/z0m8i3/simple-motd-for-debian-desktop/master/img/debian-motd-screenshot.png)

(terminal background not included)

## Dependencies:
* Figlet: Displays the ascii art for what your hostname / custom banner reads

* Lolcat: Colors the ascii art in randomly generated colored gradients

## Install

### Get dependencies
```bash
apt update && apt install figlet lolcat
```

### Create the message of the day script
As the user you want to see the motd upon each terminal launch, run [ie. run the following command separately for root, user, user1 etc; if you want all accounts to have a motd]:
```bash
nano ~/motd.sh
```

and paste the contents of [motd.sh](https://github.com/z0m8i3/simple-motd-for-debian-desktop/blob/master/motd.sh)

Save & exit.

### Make the shell script executable:
```bash
chmod +x ~/motd.sh
```

### Finally, refresh your bashrc file without logging out:
```bash
. ~/.bashrc
```

to see your new message of the day.

Tested in Gnome and Tilix terminals (the motd loads upon each new launch, without having to log out of your active desktop session).

PSA: To make your terminal even more customized, use [tilix from Debian backports](https://packages.debian.org/sid/tilix) for terminal backgrounds, tiling etc.

Base code from [Ubuntu's](https://ubuntu.com) server motd
