# Puppet manifest to configure SSH client to use a private key and refuse password authentication

# Ensure the ssh_config file exists
file { '/etc/ssh/ssh_config':
  ensure => present,
}

# Disable password authentication in SSH client
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^#?PasswordAuthentication',
}

# Declare the identity file for SSH client
file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile',
}
