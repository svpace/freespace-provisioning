webupd8team-java-ppa:
  pkgrepo.managed:
    - ppa: webupd8team/java
    - required_in:
      - pkg: oracle-java8-installer
      - pkg: oracle-java8-set-default
      - pkg: oracle-java8-oracle-java8-unlimited-jce-policy

oracle-java8-installer:
  debconf.set:
    - data:
        'shared/accepted-oracle-license-v1-1': {'type': 'boolean', 'value': 'true'}
  pkg.installed: []

oracle-java8-unlimited-jce-policy:
  pkg.installed:
    - require:
      - pkg: oracle-java8-installer

oracle-java8-set-default:
  pkg.installed:
    - require:
      - pkg: oracle-java8-installer
