# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "i3/map.jinja" import i3 with context %}

i3-pkg:
  pkg.installed:
    - name: {{ i3.pkg }}
