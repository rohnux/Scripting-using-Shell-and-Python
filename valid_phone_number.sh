###########################https://www.interviewbit.com/problems/valid-phone-number/######################

Given a text file input that contains list of phone numbers (one per line).

Write a bash script to print all valid phone numbers.You may assume that a valid phone number must appear in one of the following two formats:

(xxx) xxx-xxxx
xxx-xxx-xxxx
You may also assume each line in the text file must not contain leading or trailing white spaces.

Sample Input

987-123-4567
123 456 7890
(123) 456-7890
Sample output

987-123-4567
(123) 456-7890



Solution:

cat input | grep -e "^(*[0-9]\{3\})*[- ][0-9]\{3\}-[0-9]\{4\}$" 
