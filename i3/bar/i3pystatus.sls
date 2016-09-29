{%- set packages = ['i3pystatus', 'colour', 'netifaces', 'psutil'] %}

python3:
  pkg.installed

pip3:
  pkg.installed:
    - name: python3-pip
    - require:
      - pkg: python3

i3pystatus:
  cmd.run:
    - name: pip3 install --upgrade {{ ' '.join(packages) }}
    - require:
      - pkg: pip3
