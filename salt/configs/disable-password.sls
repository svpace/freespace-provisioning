/etc/lightdm/lightdm.conf:
  file.managed:
    - contents: |
        [SeatDefaults]
        user-session=xubuntu
        autologin-user=svpace

/etc/sudoers.d/disable-password:
  file.managed:
    - contents: |
        Defaults	!authenticate

/etc/polkit-1/localauthority/50-local.d/disable-password.pkla:
  file.managed:
    - contents: |
        [Disable password]
        Identity=unix-group:sudo
        Action=*
        ResultActive=yes
