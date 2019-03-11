# All the quirks I know that are needed when your networks has a mitm middlebox that use its own CA certificates
# You have to add those certificates to /etc/ssl/certs/ca-certificates.crt
# And set $MITM_WITH_TLS_INTERCEPTION="true"

if [[ "$MITM_WITH_TLS_INTERCEPTION" == "true" ]]
then
	export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
   	export AWS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
	export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
fi
