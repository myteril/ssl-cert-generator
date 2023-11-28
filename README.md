# ssl-cert-generator
The tool to generate Let's Encrypt SSL certificates (even wildcard SSLs) manually.

#### 1. Download script file

According to your system, choose and download the script file. For Unix systems, download `start.sh`. For Windows systems, download `start.cmd`. You can find these scripts in the `scripts` directory.

#### 2. Run script

Once you run the script, you will be asked for your email address and domain. You should enter your domain as follows:

For standard certificate:
```
yourdomain.tld
```

For Wildcard certificates:
```
*.yourdomain.tld, yourdomain.tld
```

#### 2. Add TXT record in the domain's DNS settings
Name and value for TXT record will be printed on you terminal. Copy that and add it to you DNS settings.
#### 3. Wait for TXT to propagate
It may take around 10 mins.
#### 4. Click &lt;ENTER&gt; to verify the DNS settings
#### 5. Find you certificate
Your certificates are ready to be used in `./etc/live/yourdomain.tld` directory.
