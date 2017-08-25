#!/bin/bash
# First to setup cronjob make sure you had created the empy file MOUNT_CHECK
# In this example we use s3 as storage so the command to execute is a mount through s3fs
# should be simply modified for a simple mount

DIR="YOURDIRECTORY"
CHECK_FILE="${DIR}/MOUNT_CHECK"
BUCKETAWS="AWSBUCKET"

#### DO NOT EDIT BELOW #####
OK=$(ls -lh ${CHECK_FILE} 1>/dev/null 2>&1 ; echo $?)

if
   [ $OK -ne 0 ]
then
   umount ${DIR}
   s3fs -o use_cache=/tmp/cache -o use_rrs -o allow_other $BUCKETAWS $DIR
fi
