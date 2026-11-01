>>>                     start t3
{banner.bf}
[-]

<<<+                    move to t0, set run flag to 1
[
    {prompt.bf}         ends on t2
    [-]                 clear t2
    <,                  move to t1 read letter into it
    >,[-]               move to t2 spit out and eat extra character (TODO: maybe not a good thing?)
    >                   back home!!! t3


    r match block (we start with char with highest ascii)

    <<-                 move to t1 and subtract
    [>+>+<<-]           empty out t1 into both t2 and t3 (classic loop, pretty easy to understand)
    >>[<<+>>-]          empty t3 back into t1
    +<[>-<[-]]>         set t3=1  move to t2  if t2 nonzero then t3 is set to 0 and t2 cleared

    i.e. t3=1 only if letter matches
    [
        {read.bf}
        -               zerooo it out
    ]
]