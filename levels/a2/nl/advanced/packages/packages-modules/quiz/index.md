---
title: Quiz — Pakketten
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

`$x` is gemaakt met `my`. Hij is dus lexicaal. Hij komt nooit in de `M`-naamruimte. Daarom vindt het pad `$M::x` niets. Het geeft een ongedefinieerde waarde. `.defined` is dus `False`. Alleen een `our`-variabele is op deze manier te bereiken.

</div>

{% include nav.html %}
