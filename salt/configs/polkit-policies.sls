{% for id, name, path in [
     ('org.xfce.exo-open', 'exo-open', '/usr/bin/exo-open'), 
     ('org.geany', 'Geany', '/usr/bin/geany')]
%}
/usr/share/polkit-1/actions/{{ id }}.policy:
    file.managed:
        - source: salt://configs/files/polkit.policy.template
        - template: jinja
        - context:
            id: {{ id }}
            name: {{ name }}
            path: {{ path }}
{% endfor %}
