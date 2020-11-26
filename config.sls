{% from "mysql/map.jinja" import mysql with context %}

include:
  - mysql.restart

mysql_server_config:
  file.managed:
    - name: {{ mysql.cnf_name }}
    - source: {{ mysql.cnf_file }}
    - require:
      - pkg: {{ mysql.server }}
