
# Puppet manifest to install Nginx, configure it to serve "Hello World!" at the root
# and redirect /redirect_me with a 301 Moved Permanently.

# Ensure the nginx package is installed
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx is running and enabled
service { 'nginx':
  ensure     => running,
  enable     => true,
  require    => Package['nginx'],
}

# Ensure the root index page contains "Hello World!"
file { '/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Configure the 301 redirect for /redirect_me
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('nginx/default.erb'),
  notify  => Service['nginx'],
}

# Template for the Nginx configuration
file { '/etc/nginx/templates/default.erb':
  ensure => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.nginx-debian.html;

    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
",
  notify => Service['nginx'],
}
