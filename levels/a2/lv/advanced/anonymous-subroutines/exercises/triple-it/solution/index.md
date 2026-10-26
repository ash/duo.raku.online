---
title: 'Risinājums: Trīskāršot'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Atrodiet programmu failā [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Izvade

```
21
```

## Komentāri

1. Bultiņas blokam ir tikai viens parametrs, `$x`. Bet tas lieto arī `$factor`. Šis mainīgais nāk no koda ap bloku. Bloks, kas patur šādus mainīgos, ir slēgums.

1. `$factor` ir `3`, tāpēc `$scale(7)` dod `21`. Tagad nomainiet `$factor`. Tad tas pats bloks lieto jauno vērtību:

```raku
$factor = 5;
say $scale(7); # 35
```

Slēgums patur pašu *mainīgo*. Tas nepatur mainīgā veco vērtību. Tāpēc vēlākais izsaukums redz jauno `$factor`. Tas atgriež `35`.

{% include nav.html %}
