#!/bin/bash
# -----------------------------------------------------------------------------
# Create a file named personal_data.sh with the following format:
#
# PHONE_NUMBER=1234567890
# EMAIL="myemail@domain.com"
# ADDRESS_1="My Address 3 - 4E"
# ADDRESS_2="Hawai UUU ESSS EIII"
#
# -----------------------------------------------------------------------------
DATA=personal_data.sh
FILE=cv.tex

cp ${FILE}.in ${FILE}
. ${DATA}
for i in `cut -d'=' -f1 $DATA`; do
    eval VALUE=\$$i
    sed -i "s/--$i--/$VALUE/g" $FILE
done
