---
title: 'Solvo: Ĉiuj faktorialoj samtempe'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say [\*] 1..6;
```

🦋 Vi povas trovi la fontkodon en la dosiero [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Eligo

```
(1 2 6 24 120 720)
```

## Komentoj

1. Ene de la krampoj estas retrokliniĝo. Ĝi faras el `[*]` *triangulan* redukton. Tia redukto ne faras el la listo unu valoron. Ĝi konservas ĉiun paŝon de la produkto: `1`, poste `1*2`, poste `1*2*3`, kaj tiel plu.

1. Ĉiu produkto `1*2*...*k` estas ĝuste _k!_. Do la rezulto estas la listo de faktorialoj de `1` ĝis `6`. Simpla `[*] 1..6` donas nur la lastan, `720`.

{% include nav.html %}
