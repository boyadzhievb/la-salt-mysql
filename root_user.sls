mysql_root_user:
  mysql_user.present:
    - name: {{ pillar['mysql']['root']['name'] }}
    - password: {{ pillar['mysql']['root']['password'] }}
    - host: localhost
    - require:
        - mysql_service_enable
