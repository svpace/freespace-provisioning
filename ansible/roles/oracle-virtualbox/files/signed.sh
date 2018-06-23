#!/usr/bin/env sh
set -ue

for module in "$@"; do
  echo "|$module|"
  module=$(modinfo -n $module)
  if [ "$(hexdump -e '"%_p"' $module | tail | grep signature)" ]; then
    echo "Module $1 already signed"
  else
    keybase=/etc/refind.d/keys/refind_local
    /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 $keybase.key $keybase.cer $module
  fi
  modprobe $module
done
