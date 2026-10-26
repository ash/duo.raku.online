---
title: 'Risinājums: Aprakstīt mainīgo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Avota kodu var atrast failā [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Izvade

```
Str
Scalar
$lang
```

## Komentāri

1. `.^name` atgriež konteinerā esošās vērtības tipu. Šis tips ir `Str`.

1. `.VAR` atgriež konteineru aiz mainīgā. `.^name` uz konteinera atgriež `Scalar`. Tas ir paša konteinera tips.

1. `.VAR.name` atgriež mainīgā nosaukumu ar tā sigilu: `$lang`. Ņemiet vērā, ka šī ir metode `name`. Tā nav metametode `^name` no pirmajām divām rindām.

{% include nav.html %}
