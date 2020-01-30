# SSLScrape
A simple bash script to filter results of SSLScrape.py available at GitHub.com/cheetz/sslScrape

The script takes in the hostname of your target and the file with results from sslScrape.py and out puts a seperate file with IPs and hostnames then pulls out any potentially interesting hostnames.

setup: replace any file paths with directories you wish to use.

Usage: bash SSLScrape.sh <hostname> <filename containing sslScrape.py results>
