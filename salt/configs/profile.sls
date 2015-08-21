/home/svpace/.profile: 
  file.append:
    - text:
      - '[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"'
      - export SWT_GTK3=0
