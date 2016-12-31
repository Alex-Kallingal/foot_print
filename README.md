# Foot Traffic

A program that takes a formatted log file that describes the overall gallery's foot-traffic on a minute-to-minute basis. From this data it will compute the average time spent in each room, and how many visitors there were in each room.

#How to run
`ruby foot_traffic.rb`

Now in the console it will ask you to key in the input file name(eg: sample1.txt). Please make sure the input file is placed inside the application folder

#How to specs
 `bundle exec rspec`
 
#Sample input and output
Input
```
4
0 0 I 540
1 0 I 540
0 0 O 560
1 0 O 560
```
Output

`Room 0, 20 minute average visit, 2 visitor(s) total`
