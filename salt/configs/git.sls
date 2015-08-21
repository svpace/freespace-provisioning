git: pkg.installed

{% for name, value in [
     ('user.name', 'svpace'), 
     ('user.email', 'svpace@gmail.com'),
     ('push.default', 'simple')]
%}
{{ name }}:
  git.config: 
    - value: {{ value }}
    - is_global: True
{% endfor %}
