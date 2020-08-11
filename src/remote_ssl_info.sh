#!/bin/bash

DOMAIN=$1

echo | openssl s_client -showcerts -servername $DOMAIN -connect $DOMAIN:443 2>/dev/null | openssl x509 -inform pem -noout -text
