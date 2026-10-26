---
title: 'Solvo: Legi la konstanton'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

La programo, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Eligo

```console
$ raku -I. read-pi.raku
3.14
```

## Komentoj

1. `need Circle` ŝargas la modulon, sed ĝi ne importas nomojn. Do Raku ne rekonus simplan `$pi`.

1. La programo atingas la `our`-variablon per la nomo de la modulo, kiel `$Circle::pi`.

{% include nav.html %}
