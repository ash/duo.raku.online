---
title: 'Risinājums: Saglabājiet un izlasiet'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Atrodiet programmu failā [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Izvade

```
84
```

## Komentāri

1. `spurt` izveido failu un ieraksta tajā virkni. `slurp` nolasa visu failu atpakaļ virknē. Kopā tie paveic visu saglabāšanas un ielādes darbu.

1. `slurp` atdod tekstu, `"42\n"`. Tāpēc pirms rēķināšanas mēs ar `trim` noņemam jauno rindu beigās. Tad mēs izsaucam `.Int`, lai pārvērstu tekstu par skaitli. Rezultāts `42 * 2` ir `84`.

1. Tomēr programma darbojas arī bez `.trim.Int`.

{% include nav.html %}
