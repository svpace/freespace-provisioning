/home/svpace/.local/share/applications/android-studio.desktop:
  file.managed:
    - user: svpace
    - group: svpace
    - contents: |
        [Desktop Entry]
        Version=1.0
        Type=Application
        Name=Android Studio
        Comment=Integrated Development Environment
        Icon=/home/svpace/.local/opt/android-studio/bin/studio.png
        Exec=/home/svpace/.local/opt/android-studio/bin/studio.sh
        Terminal=false
        StartupNotify=false
        Categories=Development;IDE;

/home/svpace/.local/bin/android-studio:
  file.symlink:
    - target: ../opt/android-studio/bin/studio.sh
