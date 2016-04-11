vagrant:
  pkg.installed:
    - sources: 
      - vagrant: https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb
      
/etc/bash_completion.d/vagrant:
  file.managed:
    - source: https://raw.github.com/kura/vagrant-bash-completion/master/etc/bash_completion.d/vagrant
    - source_hash: md5=862addef503e6d4452e37c39421a4feb 
