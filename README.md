# Simple MOTD for Debian Desktop
Ubuntu-like "message of the day" screen for Debian desktop terminals, without the requirement of PAM

(Can be used in any Linux distro, but only tested in Debian)

Dependencies:
> $ apt update && apt install figlet lolcat

As the user you want to see the motd upon each terminal launch, run:
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
