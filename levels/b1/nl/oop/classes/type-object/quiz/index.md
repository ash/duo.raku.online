---
title: 'Quiz — Klassen'
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af? Denk eraan dat `WHAT` het *type* meldt. Om te zien of een waarde een typeobject of een instantie is, heb je `defined` nodig.

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
