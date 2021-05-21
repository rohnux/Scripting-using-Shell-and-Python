############################https://www.interviewbit.com/problems/lines-in-a-given-range/###################################

Write a bash script to print all the lines of the input which are in the given range.

The first line of the input contains two integers l and r separated by space.

You have to print all the lines of the file input which are in the range of [l, r].

Example:

Assume that the input has the following content.

10 15
Line 2
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
Line 9
Line 10
Line 11
Line 12
Line 13
Line 14
Line 15
Line 16
Line 17
Line 18
Line 19
Line 20
Your bash script should output the following

Line 10
Line 11
Line 12
Line 13
Line 14
Line 15


Solution:


min=$(head -n 1 input | cut -f 1 -d ' ')
max=$(head -n 1 input | cut -f 2 -d ' ')
diff=$(($max - $min + 1))
head -n $max input | tail -n $diff

