#!/bin/bash

if [ -f self.sh ]
 then
  $(cat self.sh > backup.sh)
  echo "File backup.sh was created."
 else 
  echo "Self.sh was not found !!"
fi