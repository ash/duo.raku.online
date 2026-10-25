---
title: 'Solution: Digitale trappen'
---

{% include menu.html %}

Het programma gebruikt twee lussen en twee reeksen.

## Code

Hier is een mogelijke oplossing:

```raku
my $size = prompt 'Voer de grootte in: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Vind het programma in het bestand [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Uitvoer

Voer het programma uit en voer de grootte in:

```console
$ raku exercises/loops/digital-stairs.raku
Voer de grootte in: 7
1
12
123
1234
12345
123456
1234567
```

## Opmerking

Kijk hoe het programma het huidige cijfer afdrukt:

```raku
.print for 1..$n;
```

Net als `say` kun je `print` als een methode aanroepen. Hier roep je het aan op de [topic variabele](/nl/essentials/loops/topic) `$_`.

{% include nav.html %}
