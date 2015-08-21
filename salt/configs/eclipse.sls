/home/svpace/.local/share/applications/eclipse.desktop:
  file.managed:
    - user: svpace
    - group: svpace
    - contents: |
        [Desktop Entry]
        Version=1.0
        Type=Application
        Name=Eclipse
        Comment=Integrated Development Environment
        Icon=/home/svpace/.local/opt/eclipse/icon.xpm
        Exec=/home/svpace/.local/opt/eclipse/eclipse
        Terminal=false
        StartupNotify=false
        Categories=Development;IDE;

/home/svpace/.local/bin/eclipse:
  file.symlink:
    - target: ../opt/eclipse/eclipse
