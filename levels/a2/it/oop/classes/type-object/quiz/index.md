---
title: Quiz — Classi
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma? Ricorda che `WHAT` mostra il *tipo*. Ma `defined` mostra un'altra cosa. Il valore è un oggetto di tipo o un'istanza?

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
