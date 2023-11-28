@echo off
set /p "email=Enter your email address: "
set /p "domain=Enter your domain: "
@echo on

docker run --rm -i -w /etc -v "%cd%/etc:/etc/letsencrypt" -v "%cd%/var:/var/lib/letsencrypt" -e CERT_EMAIL="%email%" -e CERT_DOMAIN="%domain%" myteril/ssl-cert-generator:latest sh /bin/generate
