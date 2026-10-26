---
title: 'Risinājums: Aprakstīt mainīgo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `.^name` dod konteinerā esošās vērtības tipu, kas ir `Str`.

1. `.VAR` dod konteineru aiz mainīgā. Pēc tam `.^name` uz tā atgriež `Scalar`, kas ir paša konteinera tips.

1. `.VAR.name` atgriež mainīgā nosaukumu `$lang` ar tā sigilu. Ņemiet vērā, ka šī ir metode `name`. Tā nav metametode `^name`, ko mēs izmantojām pirmajās divās rindās.

{% include nav.html %}
