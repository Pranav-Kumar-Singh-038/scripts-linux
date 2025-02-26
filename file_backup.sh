#!/bin/bash

SRC_DIR="/home/pranav-kumar-singh/Desktop/Resumes"
BKP_DIR="/home/pranav-kumar-singh/Desktop/Resumes_backup/resumes_$(date +%F)"

mkdir -p "${BKP_DIR}"

cp -R "${SRC_DIR}/" "${BKP_DIR}"

if [[ $? -eq 0  ]]
then
 echo "Backup Successful: $(date)" >> "/home/pranav-kumar-singh/Desktop/backup.log"
else
  echo "Backup Failed: $(date)" >> "/home/pranav-kumar-singh/Desktop/backup.log"
  exit 1
fi




















