---
title: 'Solvo: Denaska tabelo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Vi povas trovi la fontkodon en la dosiero [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Eligo

```
555
```

## Komentoj

1. Skribu la fiksgrandan indiĝenan tipon `uint8` antaŭ la `@`-tabelo. Tiam Raku tenas ĉiun elementon en unu bajto. Ĉi tiu bajto estas sensigna: ĝi ne havas minussignon. Tia tabelo prenas malmulte da memoro. Tio estas bona por binaraj datumoj.

1. Ĉiu *elemento* havas limon, `0..255`. Post ĉi tiu limo, valoroj ĉirkaŭvolviĝas. Sed la limo ne validas por la sumo de la elementoj. `.sum` metas la totalon en normalan `Int`. Do `100 + 200 + 255` donas la plenan `555`.

{% include nav.html %}
