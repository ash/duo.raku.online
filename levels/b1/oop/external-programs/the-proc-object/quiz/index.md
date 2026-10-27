---
title: 'Quiz — The Proc object'
---

{% include menu.html %}

What does the following program print?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` is the integer that the program returned. Here the shell was told to `exit 2`, so it is `2`. The program does not throw. The failing `Proc` is stored in `$proc` and checked with `.exitcode`. Looking at the result counts as handling it. An exception would only happen if a failing `Proc` were thrown away without a check.

</div>

{% include nav.html %}
