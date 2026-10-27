---
title: 'Quiz — `try`'
---

{% include menu.html %}

What does the following program print?

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

Two things happen here. First, `die` stops the rest of the `try` block at once. So the line `say 'inside'` never runs, and nothing from inside the block is printed. Second, `try` catches the exception, so the program itself does not stop. It continues after the block, and `say 'outside'` runs as usual. So the only printed line is `outside`. If you looked, you would see that `$r` is undefined. The message `Boom!` would be waiting in `$!`.

</div>

{% include nav.html %}
