---
title: 'Risinājums: do bloka vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Vienkāršs `if` ir teikums. Tam nav vērtības, ko jūs varat izmantot. Prefikss `do` padara visu `if`/`else` par izteiksmi.

1. `7 > 5` ir patiess. Tāpēc izteiksmes vērtība ir `'big'`. Programma to piešķir mainīgajam `$label`. Tas pats paņēmiens darbojas ar `do given` un `do for`.

1. Jums jāraksta figūriekavas `{ }`. Raku valodā `if` vienmēr vajag bloku. Tāpēc zarus nevar saīsināt, piemēram, līdz `if 7 > 5 'big' else 'small'`. Šis kods nekompilējas. Kļūda ir *Missing block*.

{% include nav.html %}
