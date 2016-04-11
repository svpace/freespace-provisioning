rodsmith-refind-ppa:
  pkgrepo.managed:
    - ppa: rodsmith/refind
    - required_in:
      - refind

/boot/efi/EFI/refind:
  file.directory:
    - mkdirs: True

/boot/efi/EFI/refind/banner.png:
  file.copy:
    - source: /usr/share/xfce4/backdrops/xubuntu-wallpaper.png

/boot/efi/EFI/refind/shimx64.efi:
  file.managed:
    - source: salt://refind/files/shimx64.efi

/boot/efi/EFI/refind/refind.conf:
  file.managed:
    - contents: |
        timeout -1
        banner banner.png
        banner_scale fillscreen
        use_graphics_for linux,windows
        scanfor external,optical,internal,manual
        default_selection linuz

refind: pkg.installed

grub-*:
  pkg.purged:
    - pkgs:
      - grub
      - grub-common
      - grub-efi
      - grub-efi-amd64
      - grub-efi-amd64-bin
      - grub-efi-amd64-signed
      - grub-pc
      - grub-pc-bin
      - grub2
      - grub2-common
