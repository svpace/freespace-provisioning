deb https://deb.nodesource.com/node_4.x {{ grains['oscodename'] }} main:
  pkgrepo.managed:
     - file: /etc/apt/sources.list.d/nodesource.list
     - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
     - required_in:
       - nodejs

nodejs: pkg.installed

npm completion > /etc/bash_completion.d/npm:
  cmd.run:
    - creates: /etc/bash_completion.d/npm

/home/svpace/.npmrc:
  file.managed:
    - text: prefix=~/.local

node_path:
  file.append:
    - name: /home/svpace/.profile 
    - text: export NODE_PATH="$HOME/.local/lib/node_modules:$NODE_PATH"
