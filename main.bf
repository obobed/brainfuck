>>>                     start t3
{banner.bf}
[-]

<<<+                    move to t0 set run flag to 1
[
    {prompt.bf}         ends on t2
    [-]                 clear t2
    <,                  move to t1 read letter into it
    >,[-]               move to t2 spit out and eat extra character (TODO: maybe not a good thing?)
    >                   back home!!! t3


    e is echo
    q is quit
    r is read
    w is write

    WE KEEP SUBTRACTING UNTIL WE HIT ZERO AND THEN THATS A MATCH (REMEMBER SQUARE BRACKETS RUN IF 0)

    start with highest ascii (e)
    <<-----------------------------------------------------------------------------------------------------
    [>+>+<<-]           empty out t1 into both t2 and t3 (classic loop pretty easy to understand)
    >>[<<+>>-]          empty t3 back into t1
    +<[>-<[-]]>         set t3=1  move to t2  if t2 nonzero then t3 is set to 0 and t2 cleared

    [
        {echo.bf}       hopefully the linker can superposition it here like a #include
        -               erooo it out
    ]

    q
    <<------------      12 more than e (ascii)
    [>+>+<<-]           empty out t1 into both t2 and t3 (classic loop pretty easy to understand)
    >>[<<+>>-]          empty t3 back into t1
    +<[>-<[-]]>         set t3=1  move to t2  if t2 nonzero then t3 is set to 0 and t2 cleared

    [
        <<<[-]>>>       ZERO OUT THE RUN FLAG!!! (quits)
    ]

    r
    <<-                 1 more than q (ascii)
    [>+>+<<-]           empty out t1 into both t2 and t3 (classic loop pretty easy to understand)
    >>[<<+>>-]          empty t3 back into t1
    +<[>-<[-]]>         set t3=1  move to t2  if t2 nonzero then t3 is set to 0 and t2 cleared

    [
        {read.bf}
        -
    ]

    w
    119 minus 114=5
    <<-----
    [>+>+<<-]           empty out t1 into both t2 and t3 (classic loop pretty easy to understand)
    >>[<<+>>-]          empty t3 back into t1
    +<[>-<[-]]>         set t3=1  move to t2  if t2 nonzero then t3 is set to 0 and t2 cleared
    
    [
        {write.bf}
        -
    ]
    <<<                 (to check the run flag)
]   
