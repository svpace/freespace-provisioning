for module in vboxdrv vboxnetflt vboxnetadp vboxpci; do
  hexdump -e '"%_p"' $(modinfo -n $module) | tail | grep signature
done
