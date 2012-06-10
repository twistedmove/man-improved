#!/bin/sh

main ()
{
if [ "$1" = "" ] #if no arg
then echo "-> Usage: man [-pdf] [usual man args (up to four args)] name"
    return
fi

if [ "$1" = "-pdf" ] #if no p arg
    then man -t $2 $3 $4 $5 $6 | open -f -a /Applications/Preview.app
    return
fi


man $1 $2 $3 $4 $5 $6

}


# Program run starts here
main $1 $2 $3 $4 $5 $6




