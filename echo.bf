>>>

<,                  move to c2
----------          subtract 10 (\n in ascii)

We do this to determine if there is data at the cell or if it is a newline and there is nothing to echo!

[                   remember square brackets only run if the cell is nonzero
    ++++++++++      restore the cell to its previous value since it was not indeed a LF
    .               prints
    ,               read next character (the terminal buffers it up we dont have to do that :yay:)
    ----------      same \n logic as before we conclude this iteration of the loop and get taken back to the start
]

++++++++++          prepare the actual newline
.                   print :D
[-]                 loop until the cell is back at 0

>                   move back to c3