#!/bin/bash


echo "run 1"
sshpass -p student scp  grep/s21_grep student@10.10.0.11:/usr/local/bin
echo "run 2"
sshpass -p student scp  cat/s21_cat student@10.10.0.11:/usr/local/bin
