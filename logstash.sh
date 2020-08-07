#!/bin/bash
sudo wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https -y
sudo echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt install default-jre -y
sudo apt-get update -y && sudo apt-get install logstash -y
sudo rm -rf /etc/logstash/conf.d/logstash.conf 
sudo cp logstash.conf /etc/logstash/conf.d/ && sudo cp suricata /etc/logrotate.d/ && sudo logrotate /etc/logrotate.d/suricata && sudo chmod 775 /var/log/suricata/eve.json 
