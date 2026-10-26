---
title: 'Solvo: Kunigi per dupunkto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
say <a b c>.reverse.join: '-';
```

🦋 Vi povas trovi la fontkodon en la dosiero [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Eligo

```
c-b-a
```

## Komentoj

1. `.reverse` estas en la mezo de la ĉeno, do ĝi konservas sian kutiman formon. `join` venas laste, do ĝi povas uzi la dupunkton. Ĝi transdonas `'-'` ekzakte same kiel `join('-')`.

1. La inversigita listo, `c, b, a`, estas poste kunigita per streketoj, kio donas `c-b-a`. La dupunkta formo funkcias kun ordinaraj valoroj, ne nur kun blokoj.

{% include nav.html %}
