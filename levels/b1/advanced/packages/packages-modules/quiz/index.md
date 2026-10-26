---
title: 'Quiz — Packages'
---

{% include menu.html %}

What does the following program print?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`$x` is declared with `my`, so it is lexical and never enters the `M` namespace. That is why the path `$M::x` finds nothing, only an undefined value. So `.defined` is `False`. Only an `our` variable could be reached in this way.

</div>

{% include nav.html %}
