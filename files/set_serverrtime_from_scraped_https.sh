#!/bin/sh
##
# In case the firewall can't really let us talk NTP out, we scrape the value from a Norwegian reputable source over HTTPS
##
# Let's not check the certificate since this server propably think we are living in the 70's
wget -q --no-check-certificate "https://www.justervesenet.no/wp-content/plugins/precise-server-time/time.php"
json="$(cat time.php)"
rm time.php
datetime=$(echo "$json" | grep -o '"server_time":"[^"]*' | cut -d'"' -f4)
##formatted=$(echo "$datetime" | sed 's/T/ /')
# Setting the time of this server to the scraped value
date -s "$datetime"
