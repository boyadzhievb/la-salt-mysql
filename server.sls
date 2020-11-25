mysql_server_install:
  pkg.installed:
    - name: mariadb-server
    - require_ins:
      - file: /etc/my.cnf.d/server.cnf
