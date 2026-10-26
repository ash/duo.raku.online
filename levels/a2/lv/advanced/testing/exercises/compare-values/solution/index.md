---
title: 'Risinājums: Salīdzināt vērtības'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Atrodiet programmu failā [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Izvade

```
ok 1 - uppercase
1..1
```

## Komentāri

1. `is` salīdzina divas vērtības. `'a'.uc` ir vērtība, ko jūs iegūstat. `'A'` ir vērtība, ko jūs gaidāt.

1. Vērtības ir vienādas, tāpēc tests izdodas. Ja tests neizdodas, `is` izdrukā abas vērtības.

{% include nav.html %}
