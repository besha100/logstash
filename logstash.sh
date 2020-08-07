#!/bin/bash
sudo curl -L -O https://artifacts.elastic.co/downloads/logstash/logstash-5.2.0.deb && sudo dpkg -i logstash-5.2.0.deb
sudo rm -rf /etc/logstash/conf.d/logstash.conf 
sudo cp logstash.conf /etc/logstash/conf.d/ && sudo cp suricata /etc/logrotate.d/ && sudo logrotate /etc/logrotate.d/suricata && sudo chmod 775 /var/log/suricata/eve.json 
