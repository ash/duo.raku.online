---
title: Viktorīna — Klases
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma? Atcerieties, ka `WHAT` rāda *tipu*. Bet `defined` rāda ko citu. Vai vērtība ir tipa objekts vai instance?

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | kļūda

{% include quiz.html %}

{% include nav.html %}
