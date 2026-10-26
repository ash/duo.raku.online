---
title: 'Quiz — do'
---

{% include menu.html %}

What does this program print?

```raku
my $s = do given -3 {
    when $_ < 0 { 'neg' }
    default     { 'nonneg' }
};
say $s;
```

{:.quiz}
1 | neg
0 | nonneg
0 | -3
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`do` works before control structures too, not only before plain blocks. Here, `do given` makes the whole `given`/`when` an expression. The topic `-3` matches `$_ < 0`. So the value of the expression is `'neg'`. The program stores it in `$s`.

</div>

{% include nav.html %}
