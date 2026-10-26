---
title: 'Solvo: Dupunkta map'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La dupunkta formo eblas nur por `grep`, la lasta voko en la ĉeno. Per la dupunkto, `* > 10` fariĝas ĝia argumento, ekzakte kiel en `grep(* > 10)`. Ni ankoraŭ devas presi la rezulton. Do nun `say` estas uzata kiel funkcio, ne kiel metodo.

1. La voko de `map` devas konservi siajn krampojn. Supozu, ke vi skribus anstataŭe `.map: * * 2`. Tiam la dupunkto prenus ankaŭ `.grep(* > 10)` kiel argumenton de `map`. Do la ĉeno rompiĝus.

{% include nav.html %}
