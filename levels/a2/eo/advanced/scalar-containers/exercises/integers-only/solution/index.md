---
title: 'Solvo: Nur entjeroj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Vi povas trovi la fontkodon en la dosiero [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Eligo

```
250
(Int)
```

## Komentoj

1. La tipa limigo `Int` en `my Int $cars` estas regulo por la ujo. La ujo ne akceptas valorojn, kiuj ne estas entjeroj. Vi ne povas atribui `250.7` rekte. Ĉi tiu valoro estas `Rat`. Raku donas eraron dum kompiltempo, antaŭ ol la programo ruliĝas.

1. La programo vokas `.Int` sur la racionala valoro `250.7`. Tio konvertas ĝin al la entjero `250`. La metodo simple forĵetas la parton post la decimala punkto. La nova valoro konvenas al la ujo. Notu, ke tio ne estas la sama kiel rondigo.

1. La pseŭdometodo `.WHAT` montras la tipon de la konservita valoro. Ĝi estas `Int`.

{% include nav.html %}
