/storage/data/.Trash-1000:
  file.directory:
    - user: svpace
    - group: svpace

/storage/data/svpace:
  file.directory:
    - user: svpace
    - group: svpace

/home/svpace/.storage:
  file.symlink:
    - target: /storage/data/svpace
    - force: True
    - backupname: /home/svpace/.storage.bak

{% for dir in [ 'Documents', 'Downloads', 'Music', 'Pictures', 'Videos' ] %}

/home/svpace/.storage/{{ dir }}: 
  file.directory:
    - user: svpace
    - group: svpace

/home/svpace/{{ dir }}:
  file.symlink:
    - target: /home/svpace/.storage/{{ dir }}
    - force: True
    - backupname: /home/svpace/.storage/{{ dir }}.bak

{% endfor %}
