---
title: Quiz — Anweisungspräfixe
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | A warning, then 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Wenn du `10` zum undefinierten `$v` addierst, behandelt Raku ihn als `0` und bekommt `10`. Normalerweise gäbe es auch eine Warnung „uninitialized value“. Aber das `quietly`-Präfix versteckt sie, also wird nur `10` ausgegeben.

</div>

{% include nav.html %}
