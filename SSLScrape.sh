#!/bin/bash

#hostname = $1
#filename = $2
echo "SSLScrape.sh analyses results from sslscrape.py (https://github.com/cheetz/sslScrape)"
echo "Usage bash SSLScrape.sh <hostname of target> <file with results from sslScrape.py>"
echo "Running..."
grep $1 $2 > /tmp/scrape.txt
echo "-----Saving relevent IPs to IPs.txt-----"
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" /tmp/scrape.txt | tee /root/Documents/IPs.txt
echo "-----Saving hostnames to hosts.txt-----"
cat /tmp/scrape.txt | awk '{split($0,a,":"); print a[2];}' | tr , '\n' | sort -u | tee /root/Documents/hosts.txt
echo "-----Finding potentially interesting extentions-----"
grep ".git|.svn" /root/Documents/hosts.txt | tee /root/Documents/interestingHosts.txt
rm /tmp/scrape.txt
echo "-----All done-----"
