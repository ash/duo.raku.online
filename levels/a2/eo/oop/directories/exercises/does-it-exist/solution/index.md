---
title: 'Solvo: Ĉu ĝi ekzistas?'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `.e` kontrolas, ĉu vojo ekzistas. La unua kontrolo venas antaŭ ol ni kreas la dosieron. Do ĝi redonas `False`.

1. Poste `spurt` kreas `test.txt`. La dua kontrolo estas sur la *sama* vojo. Nun ĝi redonas `True`. Vi povas demandi la vojobjekton denove. Ĝia respondo montras la dosiersistemon, kia ĝi estas nun.

{% include nav.html %}
