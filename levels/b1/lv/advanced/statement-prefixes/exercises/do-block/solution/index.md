---
title: 'Risinājums: do bloka vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Atrodiet programmu failā [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Izvade

```
big
```

## Komentāri

1. Vienkāršs `if` ir teikums, un tā vērtību nevar izmantot. Prefikss `do` pārvērš visu `if`/`else` par izteiksmi.

1. `7 > 5` ir patiess, tāpēc izteiksme dod `'big'`, un šī vērtība tiek piešķirta mainīgajam `$label`. Tas pats paņēmiens darbojas ar `do given` un `do for`.

1. Figūriekavas `{ }` nav neobligātas. Raku valodā `if` vienmēr ņem bloku. Tāpēc zarus nevar saīsināt līdz `if 7 > 5 'big' else 'small'`. Šāds kods nekompilējas, un kļūda ir *Missing block*.

{% include nav.html %}
