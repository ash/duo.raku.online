---
title: 'Quiz — Klassen'
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus? Denken Sie daran, dass `WHAT` den *Typ* meldet. Um zu sehen, ob ein Wert ein Typobjekt oder eine Instanz ist, brauchen Sie `defined`.

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | ein Fehler

{% include quiz.html %}

{% include nav.html %}
