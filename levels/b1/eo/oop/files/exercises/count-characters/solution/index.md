---
title: 'Solvo: Nombru la signojn'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `slurp` relegas ĝin kiel ĉenon, kaj `.chars` kalkulas ĝiajn signojn. Estas kvar.

1. Se vi rigardas en la dosieron, vi vere vidos nur la kvar signojn. Neniu linifina signo estas aldonita.

{% include nav.html %}
