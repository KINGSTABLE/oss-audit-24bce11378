#!/bin/bash
# OSS Philosophy Creator
# Author: VRAJ J. PATEL

echo "========================================="
echo "        OSS PHILOSOPHY CREATOR"
echo "========================================="

read -p "Which open-source software do you use daily? " TOOL
read -p "What does software freedom mean to you? " FREEDOM
read -p "What would you build and share with the world? " BUILD

DATE=$(date)
FILE="oss_manifesto_$(whoami).txt"

echo "-----------------------------------------" > $FILE
echo "        OPEN SOURCE PHILOSOPHY" >> $FILE
echo "-----------------------------------------" >> $FILE
echo "Generated on: $DATE" >> $FILE
echo "" >> $FILE
echo "I use $TOOL regularly and it shows the power of open-source software." >> $FILE
echo "To me, software freedom means $FREEDOM." >> $FILE
echo "In the future, I would like to build $BUILD and share it with everyone." >> $FILE
echo "-----------------------------------------" >> $FILE

echo "Manifesto saved to $FILE"
cat $FILE

echo "========================================="
