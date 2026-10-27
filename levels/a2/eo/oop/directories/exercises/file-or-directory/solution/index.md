---
title: 'Solvo: Dosiero aŭ dosierujo?'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `.f` kontrolas, ĉu ĝi estas ordinara dosiero. Do ĝi redonas `True` por `a.txt`.

1. `.d` kontrolas, ĉu ĝi estas dosierujo. Ni demandas ĝin pri la tute sama vojo. Ĝi redonas `False`. `a.txt` estas dosiero, ne dosierujo. La du testoj laboras kiel paro. Ili montras, ĉu vojo estas dosiero aŭ dosierujo.

{% include nav.html %}
