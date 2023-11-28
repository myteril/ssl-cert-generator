# ssl-cert-generator
The tool to generate Let's Encrypt SSL certificates (even wildcard SSLs) manually.

#### 1. Run docker
```sh
docker run \
    -v $(pwd)/etc:/etc/letsencrypt \
    -v $(pwd)/var:/var/lib/letsencrypt \
    -e CERT_EMAIL="your@email.com" \
    -e CERT_DOMAIN="yoursite.tld" \
    myteril/ssl-cert-generator:latest generate
```
For Wildcard certificates:
```sh
docker run \
    -v $(pwd)/etc:/etc/letsencrypt \
    -v $(pwd)/var:/var/lib/letsencrypt \
    -e CERT_EMAIL="your@email.com" \
    -e CERT_DOMAIN="*.yoursite.tld, yoursite.tld" \
    myteril/ssl-cert-generator:latest generate
```

#### 2. Add TXT record in the domains DNS settings
Name and value for TXT record will be printed on you terminal. Copy that and add it to you DNS settings.
#### 3. Wait for TXT to propagate
Could take around 10 mins.
#### 4. Click &lt;ENTER&gt; to verify the DNS settings
#### 5. Find you certificate
Your certificates are ready to be used in `./etc/live/yoursite.tld` directory.
