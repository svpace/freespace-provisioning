deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main:
  pkgrepo.managed:
    - file: /etc/apt/sources.list.d/google-chrome.list
    - key_url: https://dl.google.com/linux/linux_signing_key.pub
    - required_in:
      - pkg: google-chrome-stable 

google-chrome-stable: pkg.installed
