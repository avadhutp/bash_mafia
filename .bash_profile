#git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#command to start printing/scanning (Necessary daemons for Arch Linux)
#To keep the system light & performant, we don't want to run these 
#daemons all the time.
alias enscan="sudo /etc/rc.d/dbus restart; sudo /etc/rc.d/avahi-daemon restart; sudo /etc/rc.d/cupsd restart;"
