#!/bin/bash

echo "Enter email address: "
read email
echo "Enter your domain: "
read domain

docker run --rm -i -w /etc -v $(pwd)/etc:/etc/letsencrypt -v $(pwd)/var:/var/lib/letsencrypt -e CERT_EMAIL="${email}" -e CERT_DOMAIN="${domain}" myteril/ssl-cert-generator:latest sh /bin/generate
