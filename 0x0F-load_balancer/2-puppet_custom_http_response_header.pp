# This Puppet manifest configures Nginx to include a custom HTTP header X-Served-By with the hostname of the server

# Install Nginx if not already installed
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx is running and enabled to start at boot
service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => File['/etc/nginx/nginx.conf'],
}

# Add custom HTTP header to the Nginx configuration
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => template('nginx/nginx_default.erb'),
  notify  => Service['nginx'],
}

# Template for Nginx default site configuration
file { '/etc/puppetlabs/code/environments/production/modules/nginx/templates/nginx_default.erb':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        add_header X-Served-By \$hostname;
        try_files \$uri \$uri/ =404;
    }
}
  ",
  notify  => Service['nginx'],
}
