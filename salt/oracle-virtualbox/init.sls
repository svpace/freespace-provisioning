deb http://download.virtualbox.org/virtualbox/debian {{ grains['oscodename'] }} contrib:
  pkgrepo.managed:
    - file: /etc/apt/sources.list.d/oracle-virtualbox-{{ grains['oscodename'] }}.list
    - key_url: https://www.virtualbox.org/download/oracle_vbox.asc
    - required_in:
      - pkg: virtualbox-5.0

virtualbox-5.0: pkg.installed
