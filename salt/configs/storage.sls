/storage/data/svpace:
  file.directory:
    - user: svpace
    - group: svpace

/storage/data/.Trash-1000:
  file.directory:
    - user: svpace
    - group: svpace
    
{% for dir in [ 'Documents', 'Downloads', 'Music', 'Pictures', 'Videos' ] %}
/storage/data/svpace/{{ dir }}: 
  file.directory:
    - user: svpace
    - group: svpace

/home/svpace/{{ dir }}:
  file.symlink:
    - target: /storage/data/svpace/{{ dir }}
    - force: True
    - backupname: /home/svpace/{{ dir }}.bak
    - require:
      - file: /storage/data/svpace/{{ dir }}

{% endfor %}
