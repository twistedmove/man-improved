man-improved
============

Read man pages in PDF, or use as usual


  Setup:

     1/ $ git clone https://github.com/jule64/man-improved.git
     
     2/ Copy the "man-improved" folder to your usual script folder then run the following in the
     command prompt:

         $ cd ~/[path to your script folder]/man-improved
         $ chmod u+x man-improved.sh
         $ ln -s ~/[path to your script folder]/man-improved/man-improved.sh ~/bin/man-improved
         $ echo "PATH=~/bin:\${PATH}" >> ~/.profile
     

  Usage (read optional setup below for easier usage):

     $ man-improved [-pdf][usual man args (up to four args)] name
     

  Examples:

     $ man-improved -pdf sed        (will display sed man page in pdf)
     $ man-improved -pdf bash       (will display bash man page in pdf)

     
  Optional Setup:
  
    add the following line to your .bashrc or .zshrc:

    man () { man-improved.sh $1 $2 $3 $4 $5 $6; }
    
     
  Usage now becomes:
  
     $ man [-pdf][usual man args (up to four args)] name
  Note that this alias effectively overrides the original man function
     
  Examples:

     $ man -pdf sed
     $ man -pdf bash
     
#####################################################

