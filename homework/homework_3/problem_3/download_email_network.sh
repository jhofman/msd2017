#!/bin/bash
#
# downloads email communication network
#
# see http://seeslab.info/downloads/long-term-email-network/
#

# download zip file
[ -f 1577586.zip ] || curl -O http://seeslab.info/media/filer_public/2d/81/2d8132ee-1390-48d0-ba86-ceb4efd5af31/1577586.zip

# uncompress gzip file
[ -f undweighted10.dat ] || unzip 1577586.zip
