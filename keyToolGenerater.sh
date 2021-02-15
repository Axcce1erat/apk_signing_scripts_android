#!/bin/zsh

echo "> Create a Keystore Using Keytool automatically!"

nameForKeytool=
vared -p "Set name for your the keystore file: " nameForKeytool

nameForKeyEntry=
vared -p "Set alias for your the keystore: " nameForKeyEntry

commonName=
vared -p "Set name for your the keystore: " commonName

organizationUnit=
vared -p "Set organization Unit for your the keystore: " organizationUnit

organizationName=
vared -p "Set organization Name for your the keystore: " organizationName

localityName=
vared -p "Set locality for your the keystore: " localityName

stateName=
vared -p "Set state for your the keystore: " stateName

country=
vared -p "Set country with 2 digets like DE for your the keystore: " country

Keytool -genkeypair  -dname "cn=$commonName, ou=$organizationUnit, o=$organizationName, l=$localityName, st=$stateName, c=$country" -v -keystore ./$nameForKeytool.keystore -alias $nameForKeyEntry -keyalg RSA -sigalg SHA256withRSA -keysize 4096 -validity 9125 
