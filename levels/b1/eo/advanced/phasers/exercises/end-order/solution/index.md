---
title: 'Solvo: La ordo de END-oj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Vi povas trovi la fontkodon en la dosiero [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Eligo

```
body
second END
first END
```

## Komentoj

1. Ambaŭ `END`-phaser-oj ruliĝas post la ĉefa kodo, do la programo presas `body` unue.

1. Pluraj `END`-phaser-oj ruliĝas laŭ la principo «lasta eniras, unua eliras». La `second END` estas deklarita poste, do ĝi ruliĝas antaŭ la `first END`. Tio estas kiel purigado, kiu kutime devas malfari la plej lastan aranĝon unue.

{% include nav.html %}
