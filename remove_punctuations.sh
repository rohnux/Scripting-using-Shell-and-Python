##################################https://www.interviewbit.com/problems/remove-punctuations/###########################

Write a bash script that removes all the punctuations in the given file named input

For this question, assume that all of the following symbols are punctuations:

! @ # $ % ^ & * ( ) _ - + = { } [ ] ; : ' " ` / > ? . , < ~ | \

Example:

Assume that input has the following content:

This's the sunny day.
It is the sunny day, we can go out.
Your script should output the following:

Thiss the sunny day
It is the sunny day we can go out

Solution:

cat input | tr -d '[:punct:]' 
