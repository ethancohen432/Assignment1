#!/bin/bash


for Ethan in {1..20}
do
  if (( $Ethan < 10 ))
   then
    echo "$Ethan Is a single-digit number"
   else
    echo "$Ethan Is a double-digit number"
 fi
done
