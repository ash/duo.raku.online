---
title: 'Solvo: Forigu dosieron'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Vi povas trovi la fontkodon en la dosiero [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Eligo

```
True
False
```

## Komentoj

1. `spurt` kreas la dosieron, do la unua testo `.e` donas `True`.

1. `unlink` forigas la dosieron. Tiam la dua testo `.e` donas `False`, ĉar la dosiero malaperis. Notu, ke ni uzas `.e` kaj ne `.f`. La tipa testo `.f` ĵetus eraron por vojo, kiu ne plu ekzistas. Sed `.e` simple respondas `False`.

{% include nav.html %}
