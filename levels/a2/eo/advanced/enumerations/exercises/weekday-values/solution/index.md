---
title: 'Solvo: Semajnotagaj nombroj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Vi povas trovi la fontkodon en la dosiero [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Eligo

```
Fri
Mon
```

## Komentoj

1. Ni skribas la konstantojn kiel parojn. Do ni povas elekti la nombrojn. Ĉi tie ili komenciĝas de `1`.

1. `Day(5)` vokas la enumeracian tipon. Ĝi serĉas en la alia direkto, de la nombro al la konstanto. Ĝi trovas la konstanton kun la valoro `5`. Ĉi tiu konstanto estas `Fri`. Same, `Day(1)` donas `Mon`. `Fri.value` faras la malon. Ĝi iras de la nomo al la nombro.

{% include nav.html %}
