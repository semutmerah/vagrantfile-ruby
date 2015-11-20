# vagrantfile-ruby
Vagrant provisioning with shell script for Ruby >= 2.2.x

##### Requirements
  * VirtualBox 5.x
  * Vagrant >= 1.7.4

##### How to use
  * git clone
  * You can check the Vagrantfile first and make change there according to your own configuration
  * run command: vagrant up 

##### What will be installed/configured :
  * MySQL 5.6
    * Username : root
    * Password : root
    * You may want to running command: mysql_secure_installation after provisioning complete to make it more secure
  * NodeJS 5.x
  * Git
  * Vim
  * QT4 Library
  * RVM (default ruby will be uninstalled)
  * Latest Ruby 2.2.x (Installed by RVM)
  * Timezone to Asia/Jakarta
  * Locale set to en_US.UTF-8
  * Gem installed : sass, bundler, mysql2, rails

