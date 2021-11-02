#!/bin/sh

docker build -t testandroidimage /home/hassnain/Desktop/docker
docker run --name testcontainer -it -d testandroidimage
docker cp testcontainer:/project/KotlinDagger2/app/build/outputs/apk/debug /home/hassnain/Desktop/docker
echo "complete"
docker stop testcontainer
docker rm testcontainer

#apksigner sign --ks keystore.jks |
#  --key key.pk8 --cert cert.x509.pem
#  [signer_options] app-name.apk

#When you sign an APK using the apksigner tool, you must provide the signer's private key and certificate. You can include this information in two different ways:

#Specify a KeyStore file using the --ks option.
#Specify the private key file and certificate file separately using the --key and --cert options, respectively.
#The private key file must use the PKCS #8 format, and the certificate file must use the X.509 format.
