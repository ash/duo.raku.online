---
title: 'Quiz — The Proc object'
---

{% include menu.html %}

What does this program print?

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

`.exitcode` is the whole number that the program returned. Here, the shell got the command `exit 2`. So the number is `2`. The program does not throw an exception. So it does not stop with an error. The program keeps the failing `Proc` in `$proc`. Then it looks at it with `.exitcode`. Looking at the result counts as handling it. You get an exception only in one case. That is when you throw away a failing `Proc` without a check.

</div>

{% include nav.html %}
