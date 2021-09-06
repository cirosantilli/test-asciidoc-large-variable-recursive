#!/usr/bin/env bash

f=README.adoc
rm -f "$f"
printf ':a0: a\n' >> "$f"
i=0
n=${1:-20000}
while [ $i -le $n ]; do
  printf ":a$(($i + 1)): {a$i}{a$i}\n" >> "$f"
  i=$(($i + 1))
done
printf "\n{a${i}}" >> "$f"
exit
