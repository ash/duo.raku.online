---
title: 'Solvo: Semajnotagaj nombroj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Se vi skribas la konstantojn kiel parojn, vi povas elekti la nombrojn. Ĉi tie ili komenciĝas de `1`.

1. Se vi vokas la enumeracian tipon kiel `Day(5)`, ĝi faras inversan serĉon. Ĝi trovas la konstanton kun la valoro `5`, kiu estas `Fri`. Same, `Day(1)` donas `Mon`. Tio estas la malo de `Fri.value`, kiu iras de la nomo al la nombro.

{% include nav.html %}
