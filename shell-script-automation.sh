#To copy a file from SFTP location to HDFS location without copying to a temp path(Increases security) 
#Password less login is enabled to the SFTP location for the user id

curl -k "sftp://${SFTP_USER_ID}@${SFTP_HOSTNAME}/${SFTP_FILE_PATH}/${FILE_NAME}" | hdfs dfs -put - ${HDFS_PATH}/${FILE_NAME}

#Password less login is not enabled

