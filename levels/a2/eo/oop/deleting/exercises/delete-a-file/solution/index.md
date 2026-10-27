---
title: 'Solvo: Forigu dosieron'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `spurt` kreas la dosieron. Do la unua testo `.e` donas `True`.

1. `unlink` forigas la dosieron. Tiam la dua testo `.e` donas `False`. La dosiero ne plu estas tie. Notu, ke ni uzas `.e` kaj ne `.f`. `.f` testas la tipon de la vojo. Ĝi ĵetas eraron, se la vojo ne plu ekzistas. Sed `.e` nur respondas `False`.

{% include nav.html %}
