####################################https://www.interviewbit.com/problems/transform-csv/#############################

Given a csv file(with , as a delimiter) named input with the following fields:

FirstName
LastName
Address
City
CountryCode
Email
PhoneNumber
Write a bash script to combine both CountryCode and PhoneNumber with a - and add a + before country code and remove country codes from the csv file

Example:

Assume that input has the following content:

Lotty,Kilner,08 Boyd Place,Jiangqiao,04,lkilner0@epa.gov,433-447-7966
Benoite,Ducket,9 Harper Alley,Tenenkou,22,bducket1@friendfeed.com,724-995-7769
Your script should output the following:

Lotty,Kilner,08 Boyd Place,Jiangqiao,lkilner0@epa.gov,+04-433-447-7966
Benoite,Ducket,9 Harper Alley,Tenenkou,bducket1@friendfeed.com,+22-724-995-7769

Solution:


awk -F ',' ' {print $1 "," $2 "," $3 "," $4 "," $6 "," "+" $5 "-" $7}'  input
