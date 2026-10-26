---
title: 'Solvo: Ĉu primo aŭ ne'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `97` havas neniujn divizorojn krom `1` kaj ĝi mem, do `is-prime` redonas `True`.

1. `91` aspektas kiel primo, sed ĝi estas `7 × 13`, do `is-prime` redonas `False`. La metodo trovas la faktorojn por vi. Ĝuste por tio ĝi ekzistas.

{% include nav.html %}
