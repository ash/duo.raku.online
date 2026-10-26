---
title: 'Solvo: La lastaj tri'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say (5, 10 ... 50).tail(3);
```

🦋 Vi povas trovi la fontkodon en la dosiero [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Eligo

```
(40 45 50)
```

## Komentoj

1. La valoroj ĉe la komenco estas `5, 10`. Ili donas paŝon de kvin. La sekvenco iras ĝis sia fina punkto, `50`.

1. `tail(3)` redonas la lastajn tri valorojn de la sekvenco: `40, 45, 50`. La sekvenco estas finia, do ĝi havas finon. `head` funkcias same. Ĝi redonas la unuajn kelkajn valorojn.

{% include nav.html %}
