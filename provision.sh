#!/usr/bin/env bash

CYAN="\033[0;36m"


echo -e "${CYAN} *** Installing RVM ***"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash


echo -e "${CYAN} *** Updating Composer ***"
sudo composer self-update


echo -e "${CYAN} *** Installing Drush 8 ***"
composer global require drush/drush:8.*


echo -e "${CYAN} *** Installing Drupal Console ***"
curl https://drupalconsole.com/installer -L -o drupal.phar
sudo mv drupal.phar /usr/local/bin/drupal
sudo chmod +x /usr/local/bin/drupal
drupal init --override

export PATH="~/.composer/vendor/bin:$PATH"
