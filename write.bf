remember, we are supposed to start at t3
>>                  at t5 aka start of buffer
,----------         read, remove 10 (newline trick)
[                   loop while not newline (remember, 10 (newline) minus 10 is 0 and that terminates a loop)
    ++++++++++      restore character
    >               next buffer cell
    ,----------     same old -10 trick
]
<[<]                slide over to guard cell
<<                  back to t3
