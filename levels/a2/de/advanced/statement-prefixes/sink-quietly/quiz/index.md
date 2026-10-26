---
title: Quiz — Anweisungspräfixe
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

`$v` ist undefiniert. Wenn du `10` dazu addierst, nimmt Raku `0` für `$v`. Also ist das Ergebnis `10`. Normalerweise gibt es auch eine Warnung: „uninitialized value“. Aber das `quietly`-Präfix versteckt sie. Also gibt das Programm nur `10` aus.

</div>

{% include nav.html %}
