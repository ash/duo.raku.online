---
title: 'Solvo: La ordo de END-oj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Ambaŭ `END`-phaser-oj ruliĝas post la ĉefa kodo. Do la programo presas `body` unue.

1. Pluraj `END`-phaser-oj ruliĝas en la ordo «lasta eniras, unua eliras». La `second END` venas poste en la kodo. Sed ĝi ruliĝas antaŭ la `first END`. Tio estas kiel purigado en veraj programoj. Kutime vi devas malfari la plej novan aranĝon unue.

{% include nav.html %}
