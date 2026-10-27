---
title: 'Risinājums: Saskaitiet rakstzīmes'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Atrodiet programmu failā [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Izvade

```
4
```

## Komentāri

1. `spurt` ieraksta failā virkni `Raku`.

1. `slurp` nolasa failu kā virkni. `.chars` saskaita rakstzīmes tajā. To ir četras.

1. Apskatiet failu. Jūs redzat tikai šīs četras rakstzīmes. Beigās nav jaunas rindas rakstzīmes.

{% include nav.html %}
