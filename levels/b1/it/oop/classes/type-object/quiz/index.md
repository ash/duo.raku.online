---
title: Quiz — Classi
translations_gpt:
---

{% include menu.html %}

Cosa stampa il programma seguente? Ricorda che `WHAT` indica il *tipo*. Per vedere se un valore è un oggetto di tipo o un'istanza, ti serve `defined`.

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | un errore

{% include quiz.html %}

{% include nav.html %}
