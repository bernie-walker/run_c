#! /bin/bash

rm -rf a.out
gcc $1 $> /dev/null

if[[$? == 0]]; then
  ./a.out
fi

echo "comilation error"
exit 1
