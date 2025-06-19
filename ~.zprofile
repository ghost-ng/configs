export PATH="$PATH:/home/unknown/.local/bin:/home/unknown/Documents/scripts:/home/unknown/.cargo/bin:/home/unknown/go/bin"

#PERMANENT VARIABLES

export function target(){
  echo $1 > ~/.config/myterm/target
  export TARGET="$1"
}

export function get_target(){
cat ~/.config/myterm/target
}

export function banner() {
  local RED='\033[0;31m'
  local GREEN='\033[0;32m'
  local NC='\033[0m' # Reset
  local YELLOW='\033[0;33m'
  local LILAC='\033[38;5;213m'
  local CLOCK_ICON=$'\uf017'
  local USER_ICON=$'\uf007'
  local TGT_ICON=$'\uf140'
  local PC_ICON=$'\uf108'
  local ips=$(ip -4 -o address | grep -v -i -E "docker|lo " | awk '{ print $4 }' | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | awk '{$1=$1};1')
  local tgt=""
  local date=$(date "+(%D %H:%ML)" | awk '{$1=$1};1')
  local user=$(whoami | awk '{$1=$1};1')
  tgt=$(get_target)
  [[ ! -z $tgt ]] && tgt="T:[$tgt]"
  local banner="${YELLOW}${CLOCK_ICON}  $date${RED} ${LILAC}${USER_ICON}  U:[$user] ${RED}${TGT_ICON}  $tgt ${GREEN}${PC_ICON}  L:[$ips]"

  printf "${banner}${NC}" | tr '\n' ' ' | tr '\t' ' '
}
source ~/.fonts/*.sh
#autoload -U add-zsh-hook
#add-zsh-hook precmd 'banner'

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
alias scan='/scripts/scan'
alias ls='colorls $@'
alias mkdire='f(){ mkdir "$@" && for i; do :; done; cd "$i";unset -f f; }; f'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias bloodhound='/opt/bloodhound/BloodHound --no-sandbox'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
