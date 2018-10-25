nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/sites-available/default
install_nginx:
   pkg.installed:
     - pkgs:
       - nginx
       - php-fpm
/var/www/html/index.php:
  file:
    - managed
    - source: salt://nginx/index.php
/etc/nginx/sites-available/default:
  file:
    - managed
    - source: salt://nginx/default
