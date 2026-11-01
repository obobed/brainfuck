remember we are supposed to start at t3
>>                  now at t5 the start of the buffer
[.>]                read then next cell  repeats until 0 (aka buffer terminator)
<[<]                slide back to guard (t4)
++++++++++.         make guard 10 and print (for a newline)
[-]                 set guard to 0
<                   back to t3