---
title: '`for` lussen'
---

{% include menu.html %}

De `for`-lus is een krachtig hulpmiddel om één voor één door meerdere elementen te gaan. Laten we bijvoorbeeld een reeks nemen:

```raku
for 1..5 -> $n {
    say $n;
}
```

In dit programma neemt de variabele `$n` bij elke iteratie de volgende waarde uit de reeks. Merk op dat je de variabele niet met `my` hoeft te declareren. Het codeblok wordt zo vaak herhaald als er elementen in de gegevensbron zijn. Dus drukt het programma de getallen regel voor regel af:

```console
$ raku t.raku 
1
2
3
4
5
```

Het programma gaat door alle waarden die het [bereik](/nl/essentials/ranges) `1..5` oplevert. Dit zijn `1`, `2`, `3`, `4` en `5`.

## Meer dan één waarde nemen

Een interessante eigenschap van Raku is dat je meer dan één item in een enkele iteratie kunt nemen. Het volgende programma drukt elke keer dat de lus draait twee getallen af:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Dit is de uitvoer van het programma:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
