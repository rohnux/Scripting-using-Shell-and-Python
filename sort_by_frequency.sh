###########################################https://www.interviewbit.com/problems/sort-by-frequency/###########################

In the given file named input, find the frequency of all the words and print as per the following format.

The first column of each line of the output should be the frequency of the word followed by all the words of that frequency arranged in lexicographical order separated with space “ ”

Sort the words in the ascending order of frequency.



For simplicity, assume that

Words are case sensitive, i.e. The and the are treated as different words.


Example:

Assume that input has following content:

the day is sunny 
it is the sunny day
we can go out
Your script should output the following, sorted by the ascending frequency:

1 can go it out we
2 day is sunny the


Solution:


cat input | tr ' ' '\n' | sort  | uniq -c  | sort | awk '{a[$1] = a[$1]==""? $2 : a[$1]" "$2 } END { for (key in a) { print key " " a[key] } }' | sort -n
