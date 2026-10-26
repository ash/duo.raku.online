---
title: 'Solvo: Ĉiuj faktorialoj samtempe'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La retrokliniĝo ene de la krampoj faras el `[*]` *triangulan* redukton. Ĝi ne reduktas la liston al unu sola valoro. Anstataŭe, ĝi konservas ĉiun partan produkton: `1`, poste `1*2`, poste `1*2*3`, kaj tiel plu.

1. Ĉiu parta produkto `1*2*...*k` estas ĝuste _k!_. Do la rezulto estas la listo de faktorialoj de `1` ĝis `6`. Simpla `[*] 1..6` donus nur la lastan el ili, `720`.

{% include nav.html %}
