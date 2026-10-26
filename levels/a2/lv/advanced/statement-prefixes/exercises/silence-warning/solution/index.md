---
title: 'Risinājums: Apklusināt brīdinājumu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Atrodiet programmu failā [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Izvade

```
Hello, !
```

## Komentāri

1. Šeit nedefinētais `$name` nonāk virknē. Parasti tas dod brīdinājumu: “neinicializētas vērtības lietošana”. Bet izteiksme ir `quietly` iekšā. Tāpēc brīdinājums ir paslēpts. Programma izdrukā tikai sveicienu.

1. Tāpat kā `do`, `quietly` atgriež sava bloka vērtību. Tāpēc programma saglabā jauno virkni mainīgajā `$greeting`. Vārda nav, tāpēc virknē ir tukša sprauga.

1. `quietly` tikai paslēpj brīdinājumu. Vērtība joprojām ir nedefinēta. Varbūt jūs gribat trūkstošo vērtību *apstrādāt*. Tad dodiet noklusējuma vērtību ar defined-or operatoru `//`. `$name // 'friend'` dod `'friend'`, kad `$name` ir nedefinēts. Tāpēc `"Hello, " ~ ($name // 'friend') ~ "!"` izdrukā `Hello, friend!`. Brīdinājuma nemaz nav.

{% include nav.html %}
