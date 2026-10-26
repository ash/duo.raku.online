---
title: Quiz — do
---

{% include menu.html %}

Quid hoc programma imprimit?

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

`do` etiam ante structuras fluxus controllandi operatur, non solum ante copias nudas. Hic `do given` totum `given`/`when` expressionem facit. Topicum `-3` cum `$_ < 0` congruit. Itaque valor expressionis est `'neg'`. Programma eum in `$s` servat.

</div>

{% include nav.html %}
