#!/usr/bin/env bash
set -euo pipefail
# entr -cs statusbar.sh <<< "$(which statusbar.sh)"

function color() {
  echo -e "\e[$1m$2\e[0;00m"
}

SEP=" ┊ "
BAT="$(< /sys/class/power_supply/BAT0/capacity)"
DATE="$(date +'%Y-%m-%d')"
TIME="$(date +'%I:%M:%S %p')"
echo -e "$BAT%$SEP$DATE$SEP$TIME"
