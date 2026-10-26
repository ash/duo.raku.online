---
title: 'Solvo: Dupunkta map'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Vi povas trovi la fontkodon en la dosiero [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Eligo

```
(12 14 16 18 20)
```

## Komentoj

1. Nur `grep` povas uzi la dupunktan formon. Ĝi estas la lasta voko en la ĉeno. Per la dupunkto, `* > 10` fariĝas ĝia argumento. Tio estas ekzakte kiel `grep(* > 10)`. Ni ankoraŭ devas presi la rezulton. Do nun ni uzas `say` kiel funkcion, ne kiel metodon.

1. La voko de `map` devas konservi siajn krampojn. Se vi skribas `.map: * * 2`, estas problemo. La dupunkto prenas ankaŭ `.grep(* > 10)`. Ĝi fariĝas parto de la argumentoj de `map`. Tiam la ĉeno rompiĝas.

{% include nav.html %}
