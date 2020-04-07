#! /bin/bash

rm -rf *.o main
gcc -c *.c
gcc -o main *.o

if(($? == 0))
then
  ./main
  exit 0
fi

echo "compilation error"
exit 1
