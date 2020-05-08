#! /bin/bash

run_app()
{
    rm -rf *.o main
    gcc -c $1*.c ${@:2}
    gcc -o main *.o
    
    if(($? == 0))
    then
        ./main
        return 0
    fi
    
    return 1
}


if [ -z $1 ]
then
    run_app './'
else
    if [ $1 = '-t' ]
    then
        run_app 'test/' ${@:2}
    fi
fi

exit $?
