#!/bin/bash
#filename=/home/debashis/Documents/scripts/result.txt
# - Take all the file information from home directory and appending into a file

cd /home/debashis
  $(ls -lR > file_information.txt)
  echo "File file_information.txt was created at /home/debashis."
  #-creating tar and zip for file_information.txt
  tar -cvf file_information.txt.tar file_information.txt
  gzip file_information.txt.tar
  echo "file_information.txt.tar.zip was created @/home/debashis."
  read -p "Please insert USB and press enter : "
  if [ $(lsusb | grep "03f0:7f40" | wc -l) -eq 1 ]
   then
     echo "Hewlett Packard detected !!"
     # copying file file_information.txt.tar.gz to USB location
     mv file_information.txt.tar.gz "/media/HP V152W"
   else 
     echo "Not a suitable USB drive. exiting !!"
  fi
cd $OLDPWD
