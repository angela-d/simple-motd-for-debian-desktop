# Simple MOTD for Debian Desktop
Ubuntu-like "message of the day" screen for Debian desktop terminals, without the requirement of PAM

(Can be used in any Linux distro, but only tested in Debian)

                          __| | ___| |__ (_) __ _ _ __  
                         / _` |/ _ \ '_ \| |/ _` | '_ \ 
                        | (_| |  __/ |_) | | (_| | | | |
                         \__,_|\___|_.__/|_|\__,_|_| |_|
                                                        

	Debian GNU/Linux 9.2 (stretch) 		Kernel: 4.9.0-4-amd64

		As of: Wed Oct 25 21:44:56 CDT 2017

	System load:	0.51		Processes:	179
	Memory usage:	0.0%		Uptime:		4:00 hours
	Disk usage:	20%		Swap:		0.0%


Dependencies:
> $ apt update && apt install figlet lolcat

Figlet: Displays the ascii art for what your hostname / custom banner reads

Lolcat: Colors the ascii art in randomly generated colored gradients

As the user you want to see the motd upon each terminal launch, run [ie. run command separately for root, user, user1 etc; if you want all accounts to have a motd]:
> nano ~/motd.sh

and paste the contents of "motd.sh"

Save & exit.

Run:
> $ chmod +x ~/motd.sh

to make the shell script executable.

Finally, run:
> . ~/.bashrc

to see your new message of the day.

Tested in Gnome and Tilix terminals.

PSA: To make your terminal even more customized, use [tilix from Debian backports](https://packages.debian.org/sid/tilix) for terminal backgrounds, tiling etc.
