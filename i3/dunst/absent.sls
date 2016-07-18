include:
  - i3

dunst:
  pkg.purged:
    - require:
      - pkg: i3-pkg
  cmd.run:
    - name: killall dunst
    - onlyif: pgrep dunst
    - require:
      - pkg: dunst
