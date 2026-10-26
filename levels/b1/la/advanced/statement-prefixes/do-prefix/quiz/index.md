---
title: Quiz — do
---

{% include menu.html %}

Quid sequens programma imprimit?

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

`do` ante structuras fluxus controllandi operatur, non solum ante copias nudas. Hic `do given` totum `given`/`when` in expressionem convertit. Topicum `-3` cum `$_ < 0` congruit, itaque expressio `'neg'` dat. Hic valor in `$s` servatur.

</div>

{% include nav.html %}
