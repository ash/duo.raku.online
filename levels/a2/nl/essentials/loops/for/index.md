---
title: '`for` lussen'
---

{% include menu.html %}

De `for`-lus is een sterk hulpmiddel. Hij gaat door veel elementen, één voor één. Laten we bijvoorbeeld een reeks nemen:

```raku
for 1..5 -> $n {
    say $n;
}
```

In dit programma krijgt de variabele `$n` elke keer de volgende waarde uit de reeks. Je hoeft de variabele niet met `my` te declareren. Het codeblok draait één keer voor elk element van de reeks. Dus drukt het programma de getallen af, één op elke regel:

```console
$ raku t.raku 
1
2
3
4
5
```

Het programma gaat door alle waarden van het [bereik](/nl/essentials/ranges) `1..5`. Dit zijn `1`, `2`, `3`, `4` en `5`.

## Meer dan één waarde tegelijk

In Raku kan een lus meer dan één item tegelijk nemen. Dit programma drukt elke keer twee getallen af:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Hier is de uitvoer van het programma:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
