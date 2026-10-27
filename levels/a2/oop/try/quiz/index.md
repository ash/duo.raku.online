---
title: 'Quiz — `try`'
---

{% include menu.html %}

What does this program print?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside then outside
0 | Boom!
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Two things happen here. First, `die` stops the rest of the `try` block at once. So the program never gets to the line `say 'inside'`. Nothing from inside the block is printed. Second, `try` catches the exception, the error from `die`. So the program itself does not stop. It goes on after the block. `say 'outside'` runs as usual. So the program prints only one line: `outside`. You can also look at `$r` and `$!`. `$r` is undefined. The message `Boom!` waits in `$!`.

</div>

{% include nav.html %}
