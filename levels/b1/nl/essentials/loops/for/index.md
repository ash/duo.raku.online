---
title: '`for` lussen'
---

{% include menu.html %}

De `for`-lus is een krachtig hulpmiddel. Hij gaat door veel elementen, het ene na het andere. Laten we bijvoorbeeld een reeks nemen:

```raku
for 1..5 -> $n {
    say $n;
}
```

Elke keer dat de lus draait, neemt de variabele `$n` de volgende waarde uit de reeks. Merk op dat je de variabele niet met `my` hoeft te declareren. Het codeblok draait één keer voor elk element van de gegevensbron. Dus drukt het programma de getallen af, één per regel:

```console
$ raku t.raku 
1
2
3
4
5
```

Het programma gaat door alle waarden die het [bereik](/nl/essentials/ranges) `1..5` geeft. Dit zijn `1`, `2`, `3`, `4` en `5`.

## Meer dan één waarde nemen

Hier is een interessante eigenschap van Raku. Een lus kan meer dan één item tegelijk nemen. Het volgende programma drukt elke keer dat de lus draait twee getallen af:

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
