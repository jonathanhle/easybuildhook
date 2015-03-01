#!/usr/bin/env bash
if cat /etc/hosts | grep netflix
  then
    #Remove Netflix lines from /etc/hosts 
    sed -i '' '/netflix/d' /etc/hosts
  else
    #Add lines for Netflix to /etc/hosts to block it
    echo "127.0.0.1	netflix.com" >> /etc/hosts
    echo "127.0.0.1 	www.netflix.com" >> /etc/hosts
fi
