---
title: 'Solvo: Kunigi per dupunkto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `.reverse` estas en la mezo de la ĉeno. Do ĝi konservas sian ordinaran formon. `join` estas la lasta voko. Do ĝi povas uzi la dupunkton. La dupunkto donas `'-'` al ĝi, same kiel `join('-')`.

1. Post `.reverse`, la listo estas `c, b, a`. Poste `join` metas streketojn inter la vortojn. La rezulto estas `c-b-a`. La dupunkta formo funkcias ankaŭ kun ordinaraj valoroj, ne nur kun blokoj.

{% include nav.html %}
