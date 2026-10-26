---
title: 'Quiz — Dynamic variables'
---

{% include menu.html %}

What does the following program print?

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

`show` is written at the top level, right next to `my $*n = 1`. But this place does not matter. Raku looks up a dynamic variable through the *call stack*. Where the code sits is not important. Here, `show` is called from `run`, which declared `$*n` again as `2`. So this is the value in use, and the program prints `2`.

</div>

{% include nav.html %}
