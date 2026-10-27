---
title: 'Solvo: Nombru la signojn'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Vi povas trovi la fontkodon en la dosiero [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Eligo

```
4
```

## Komentoj

1. `spurt` skribas la ĉenon `Raku` en la dosieron.

1. `slurp` legas la dosieron kiel ĉenon. `.chars` kalkulas la signojn en ĝi. Estas kvar signoj.

1. Rigardu la dosieron. Vi vidas nur ĉi tiujn kvar signojn. Ĉe la fino ne estas linifina signo.

{% include nav.html %}
