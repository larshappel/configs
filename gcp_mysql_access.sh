# This is the command to connect to the dev instance with the IP below. The Certificate files need to be present for this to work.
mysql -uroot -p -h 34.146.239.172 --ssl-ca=server-ca.pem --ssl-cert=client-cert.pem --ssl-key=client-key.pem
