---
title: 'Solvo: Ĉu ĝi ekzistas?'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Vi povas trovi la fontkodon en la dosiero [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Eligo

```
False
True
```

## Komentoj

1. `.e` kontrolas, ĉu vojo ekzistas. La unua kontrolo okazas antaŭ ol ni kreas la dosieron, do ĝi redonas `False`.

1. Poste `spurt` kreas `test.txt`, kaj la dua kontrolo sur la *sama* vojo redonas `True`. Demandu la vojobjekton denove, kaj vi ricevas la nunan staton de la dosiersistemo.

{% include nav.html %}
