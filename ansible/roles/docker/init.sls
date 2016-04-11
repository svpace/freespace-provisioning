deb https://apt.dockerproject.org/repo ubuntu-{{ grains['oscodename'] }} main:
  pkgrepo.managed:
     - file: /etc/apt/sources.list.d/docker.list
     - keyid: 58118E89F3A912897C070ADBF76221572C52609D
     - keyserver: p80.pool.sks-keyservers.net
     - required_in:
       - docker-engine
