#To copy a file from SFTP location to HDFS location without copying to a temp path(Increases security) 
#Password less login is enabled to the SFTP location for the user id

curl -k "sftp://${SFTP_USER_ID}@${SFTP_HOSTNAME}/${SFTP_FILE_PATH}/${FILE_NAME}" | hdfs dfs -put - ${HDFS_PATH}/${FILE_NAME}

#Password less login is not enabled


#Password less login to any server from loacl machine
#In the terminal of local machine type the below command 

ssh-keygen -t rsa
ssh <user_id>@<machine_id> mkdir -p .ssh
cat .ssh/id_rsa.pub | ssh <user_id>@<machine_id> 'cat >> .ssh/authorized_keys'
ssh <user_id>@<machine_id> "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

