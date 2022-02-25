
# Created by `userpath` on 2021-11-22 23:07:18
export PATH="$PATH:/home/unknown/.local/bin:/home/unknown/Documents/scripts:/home/unknown/.cargo/bin:/home/unknown/go/bin"

#PERMANENT VARIABLES

export function target(){
  echo $1 > ~/.config/myterm/target
}


export function banner() {
  RED='\033[0;31m'
  GREEN='\033[0;32m'
  NC='\033[0m'
  ips=$(ip -4 -o address | grep -v -i -E "docker|lo " | awk '{ print $4 }' | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}")
  tgt=""
  if [[ ! -z $TARGET ]]; then tgt=T:[$TARGET]; fi
  add="${RED}$tgt ${GREEN}L:[$ips]"
  echo -e $add${NC} | tr '\n' ' '
}

export weevely-gen(){
  cmd="weevely generate adminpassword1234 shell.php -obfuscator obfusc1_php -agent obfpost_php"
  echo $cmd
  eval $cmd
}

export weevely-term(){
  cmd="weevely terminal $1 adminpassword1234"
  echo $cmd
  eval $cmd
}

alias torip='curl --socks5 127.0.0.1:9050 http://checkip.amazonaws.com/'
alias newtorip="printf 'AUTHENTICATE \"password1234\"\r\nSIGNAL NEWNYM\r\n' | nc 127.0.0.1 9051 >/dev/null"
alias scan='/home/unknown/Documents/scripts/scan'
alias ls='colorls $@'
alias mkdire='f(){ mkdir "$@" && for i; do :; done; cd "$i";unset -f f; }; f'
alias sharpyshell='/home/unknown/Documents/Github/SharPyShell/SharPyShell.py'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias bloodhound='/opt/bloodhound/BloodHound --no-sandbox'

#echo "profile loaded"
