#!/bin/sh

#######################################################
#  MAN-IMPROVED                                       #
#  Version: 1.0                                       #
#                                                     #
#  Features:                                          #
#   Usual man page functionalities (up to 4)          #
#   Displays Man Pages in PDF format                  #
#  -------------------------------------------------  #
#                                                     #
#  Setup:                                             #
#     $ cd ~/apps/man-improved                        #
#     $ chmod u+x man-improved.sh                     #
#     $ ln -s ~/apps/man-improved/man-improved.sh     #
#     ~/bin/man-improved                              #
#     $ echo "PATH=~/bin:\${PATH}" >> ~/.profile      #
#                                                     #
#  Usage:                                             #
#     $ man-improved [-pdf]  [usual man args (up to   #
#     four args)] name                                #
#                                                     #
#  Examples:                                          #
#     $ man-improved -pdf sed (display sed man page   #
#     in pdf)                                         #
#     $ man-improved -pdf bash (display bash man page #
#     in pdf)                                         #
#                                                     #
#  Optional Setup (Recommended):                      #
#    add the following line to your .bashrc or .zshrc:#
#    man () { man-improved.sh $1 $2 $3 $4 $5 $6; }    #
#                                                     #
#  Usage now becomes:                                 #
#     $ man [-pdf]  [usual man args (up to            #
#     four args)] name                                #
#                                                     #
#  Examples:                                          #
#     $ man -pdf sed                                  #
#     $ man -pdf bash                                 #
#######################################################

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




