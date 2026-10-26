---
title: 'Solvo: Ĉu primo aŭ ne'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Vi povas trovi la fontkodon en la dosiero [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Eligo

```
True
False
```

## Komentoj

1. Vi povas dividi `97` nur per `1` kaj per ĝi mem. Do `is-prime` redonas `True`.

1. `91` aspektas kiel primo, sed ĝi estas `7 × 13`. Do `is-prime` redonas `False`. La metodo trovas la faktorojn por vi. Tial ni havas ĉi tiun metodon.

{% include nav.html %}
