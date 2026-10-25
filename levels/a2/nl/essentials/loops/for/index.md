---
title: '`for` lussen'
---

{% include menu.html %}

De `for`-lus is heel handig. Hij gaat door veel items, één voor één. Neem bijvoorbeeld een reeks:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` krijgt elke keer de volgende waarde uit de reeks. Je hoeft geen `my` voor `$n` te schrijven. Het blok draait één keer voor elke waarde in de reeks. Dus drukt het programma de getallen af, één op elke regel:

```console
$ raku t.raku 
1
2
3
4
5
```

Het programma gaat door alle waarden van het [bereik](/nl/essentials/ranges) `1..5`. Deze waarden zijn `1`, `2`, `3`, `4` en `5`.

## Meer dan één waarde tegelijk

In Raku kan een lus elke keer twee of meer items nemen. Dit programma drukt twee getallen tegelijk af:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Dit drukt het programma af:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
