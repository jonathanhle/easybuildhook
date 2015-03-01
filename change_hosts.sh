#!/usr/bin/env bash
sudo killall -HUP mDNSResponder
defaults write com.apple.safari WebKitDNSPrefetchingEnabled -boolean false
sudo discoveryutil udnsflushcaches

if cat /etc/hosts | grep netflix
  then
    #Remove Netflix lines from /etc/hosts 
    sed -i '' '/netflix/d' /etc/hosts
    sudo discoveryutil mdnsflushcache
  else
    #Add lines for Netflix to /etc/hosts to block it
    echo "104.236.173.195	netflix.com" >> /etc/hosts
    echo "104.236.173.195 	www.netflix.com" >> /etc/hosts
    sudo discoveryutil mdnsflushcache
fi
