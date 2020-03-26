#! /bin/bash

rm -rf a.out
gcc $1 &> /dev/null

if(($? == 0))
then
  ./a.out
  exit 0
fi

echo "compilation error"
exit 1
