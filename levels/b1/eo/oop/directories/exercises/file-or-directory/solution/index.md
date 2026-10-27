---
title: 'Solvo: Dosiero aŭ dosierujo?'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Vi povas trovi la fontkodon en la dosiero [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Eligo

```
True
False
```

## Komentoj

1. `.f` kontrolas, ĉu la vojo estas ordinara dosiero, do ĝi redonas `True` por `a.txt`.

1. `.d` kontrolas, ĉu la vojo estas dosierujo. Por la tute sama vojo, ĝi redonas `False`. Tio estas, ĉar `a.txt` estas dosiero, ne dosierujo. La du testoj kompletigas unu la alian. Tiel vi distingas dosieron de dosierujo.

{% include nav.html %}
