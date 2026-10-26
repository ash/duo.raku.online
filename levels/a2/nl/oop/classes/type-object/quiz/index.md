---
title: 'Quiz — Klassen'
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af? Denk eraan dat `WHAT` het *type* toont. Maar `defined` toont iets anders. Is de waarde een typeobject of een instantie?

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | een fout

{% include quiz.html %}

{% include nav.html %}
