---
title: 'Quiz — Packages'
---

{% include menu.html %}

What does this program print?

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

`$x` is created with `my`. So it is lexical. It never gets into the `M` namespace. Because of this, the path `$M::x` finds nothing. It gives an undefined value. So `.defined` is `False`. Only an `our` variable can be reached in this way.

</div>

{% include nav.html %}
