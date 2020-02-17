#!/bin/bash 

# File-Name: crosswords.sh
# Signature: 202002.ORIGINAL
## King AbdulAziz University
## Faculty of Engineering
## Department of Electical and Computer Engineering
## 
## created by: Eng. Turky AbdulAziz AbdulHafiz
## 				eng.tg@ieee.org
##					august 2011

# a script to simulate the (Cross-Words) game

clear
echo -e "\n\t\t**** WELCOME to the Cross-Words Game ****\n\v"
echo -e "\t   1   2   3   4   5   6"
echo -e "\t1 [ ] [ ] [*] [ ] [ ] [*]"
echo -e "\t2 [ ] [*] [ ] [ ] [ ] [ ]"
echo -e "\t3 [ ] [ ] [ ] [ ] [*] [ ]"
echo -e "\t4 [*] [ ] [ ] [*] [ ] [ ]"
echo -e "\t5 [ ] [ ] [*] [ ] [ ] [*]"
echo -e "\t6 [ ] [*] [ ] [ ] [*] [*]"
echo -en "\nPress Enter to Continue ..."
read tmp
echo -e "\n Vertical:\n\t1) I _ _ _ a PC when I was young / I _ _ a good student\n\t2) _ / _ _ _ as fast as you can\n\t3) I _ _ _ a student last year / _\n\t4) I bought a _ _ _ MacBook-Air / EE463 lab session _ _ 4:30 PM\n\t5) Turn _ _ the lights / This _ _ my computer\n\t6) the number _ _ _ comes after nine\v"
echo -e " Horizontal:\n\t1)  _ _ is my brother / _ _, he is not there\n\t2) _ / I _ _ _ _ to coffee shop yesterday\n\t3) Q2 is to  _ _ _ a shape / _\n\t4) let _ _ have a vacation / write this _ _ your notes\n\t5) I have _ _ apple / this car is same _ _ mine\n\t6) _ / is _ _ true?\v"
#echo -en "\nPress Enter to Continue ..."
#//read tmp

ply()
{
 echo -e "\nHow do you want to solve the puzzle?"
 pattern='by_Columns by_Rows'
 select pat in $pattern
 do
   case $pat in
     "by_Columns")  c=1
		    while [ $c -eq 1 ]
		    do
		    echo 'column 1'
		    echo -en "\tThe first word is: "
		    read c1w1
		    if [ $c1w1 == "had" ]
		     then
		      echo -en "\tThe second word is: "
		      read c1w2
		      if [ $c1w2 == "am" ]
		       then
			let "c=2"
		      fi
		    fi
		    done
		    while [ $c -eq 2 ]
		    do
		    echo 'column 2'
		    echo -e "\tThe missing letter is: E"
		    echo -en "\tThe missing word is: "
		    read c2w1
		    if [ $c2w1 == "run" ]
		     then
			let "c=3"
		    fi
		    done
		    while [ $c -eq 3 ]
		    do
		    echo 'column 3'
		    echo -en "\tThe missing word is: "
		    read c3w1
		    if [ $c3w1 == "was" ]
		     then
		      echo -e "\tThe missing letter is: I"
		      let "c=4"
		    fi
		    done
		    while [ $c -eq 4 ]
		    do
		    echo 'column 4'
		    echo -en "\tThe first word is: "
		    read c4w1
		    if [ $c4w1 == "new" ]
		     then
		      echo -en "\tThe second word is: "
		      read c4w2
		      if [ $c4w2 == "at" ]
		       then
			let "c=5"
		      fi
		    fi
		    done
		    while [ $c -eq 5 ]
		    do
		    echo 'column 5'
		    echo -en "\tThe first word is: "
		    read c5w1
		    if [ $c5w1 == "on" ]
		     then
		      echo -en "\tThe second word is: "
		      read c5w2
		      if [ $c5w2 == "is" ]
		       then
			let "c=6"
		      fi
		    fi
		    done
		    while [ $c -eq 6 ]
		    do
		    echo 'column 6'
		    echo -en "\tThe missing word is: "
		    read c6w1
		    if [ $c6w1 == "ten" ]
		     then
		      echo -e "\v\tSolution:"
		      sol
		      echo -e "\v\t\t     *****************************"
		      echo -e "\t\t****** C N G R A T U L A T I O N ******"
		      echo -e "\t\t******      you won the game     ******"
		    fi
		    break
		    done
		    break;;
     "by_Rows")   r=1
		    while [ $r -eq 1 ]
		    do
		    echo 'row 1'
		    echo -en "\tThe first word is: "
		    read r1w1
		    if [ $r1w1 == "he" ]
		     then
		      echo -en "\tThe second word is: "
		      read r1w2
		      if [ $r1w2 == "no" ]
		       then
			let "r=2"
		      fi
		    fi
		    done
		    while [ $r -eq 2 ]
		    do
		    echo 'row 2'
		    echo -e "\tThe missing letter is: A"
		    echo -en "\tThe missing word is: "
		    read r2w1
		    if [ $r2w1 == "went" ]
		     then
			let "r=3"
		    fi
		    done
		    while [ $r -eq 3 ]
		    do
		    echo 'row 3'
		    echo -en "\tThe missing word is: "
		    read r3w1
		    if [ $r3w1 == "draw" ]
		     then
		      echo -e "\tThe missing letter is: E"
		      let "r=4"
		    fi
		    done
		    while [ $r -eq 4 ]
		    do
		    echo 'row 4'
		    echo -en "\tThe first word is: "
		    read r4w1
		    if [ $r4w1 == "us" ]
		     then
		      echo -en "\tThe second word is: "
		      read r4w2
		      if [ $r4w2 == "in" ]
		       then
			let "r=5"
		      fi
		    fi
		    done
		    while [ $r -eq 5 ]
		    do
		    echo 'row 5'
		    echo -en "\tThe first word is: "
		    read r5w1
		    if [ $r5w1 == "an" ]
		     then
		      echo -en "\tThe second word is: "
		      read r5w2
		      if [ $r5w2 == "as" ]
		       then
			let "r=6"
		      fi
		    fi
		    done
		    while [ $r -eq 6 ]
		    do
		    echo 'row 6'
		    echo -e  "\tThe missing letter is: M"
		    echo -en "\tThe missing word is: "
		    read r6w1
		    if [ $r6w1 == "it" ]
		     then
		      echo -e "\v\tSolution"
		      sol
		      echo -e "\v\t\t     *****************************"
		      echo -e "\t\t****** C N G R A T U L A T I O N ******"
		      echo -e "\t\t******      you won the game     ******"
		    fi
		    break
		    done
		    break;;
   esac
 done
}

sol()
{
echo -e "\t   1   2   3   4   5   6"
echo -e "\t1 [H] [E] [*] [N] [O] [*]"
echo -e "\t2 [A] [*] [W] [E] [N] [T]"
echo -e "\t3 [D] [R] [A] [W] [*] [E]"
echo -e "\t4 [*] [U] [S] [*] [I] [N]"
echo -e "\t5 [A] [N] [*] [A] [S] [*]"
echo -e "\t6 [M] [*] [I] [T] [*] [*]"
}

options='Play Solution'
select choice in $options
do
case $choice in
 "Play") ply;echo;break;;
 "Solution") sol;echo;break;;
esac
done
