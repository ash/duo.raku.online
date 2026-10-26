---
title: 'Quiz — Dynamic variables'
---

{% include menu.html %}

What does this program print?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` is at the top level. It is right next to `my $*n = 1`. But this place does not matter. Raku looks for a dynamic variable through the *call stack*. It does not look at where the code is. Here, `run` calls `show`. And `run` declares `$*n` again as `2`. So this value is in use, and the program prints `2`.

</div>

{% include nav.html %}
