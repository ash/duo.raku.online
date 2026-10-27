---
title: 'Risinājums: Saglabājiet un izlasiet'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `spurt` izveido failu un ieraksta tajā virkni. `slurp` nolasa visu failu atpakaļ virknē. Kopā tie dara abus darbus. Tie saglabā datus un atkal tos ielādē.

1. `slurp` atdod tekstu: `"42\n"`. Tāpēc mēs lietojam `trim`, lai noņemtu jauno rindu beigās. Tad mēs izsaucam `.Int`, lai pārvērstu tekstu par skaitli. Tagad mēs varam ar to rēķināt. `42 * 2` rezultāts ir `84`.

1. Bet programma strādā arī bez `.trim.Int`.

{% include nav.html %}
