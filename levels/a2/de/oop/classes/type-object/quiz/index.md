---
title: 'Quiz — Klassen'
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus? Denken Sie daran, dass `WHAT` den *Typ* zeigt. Aber `defined` zeigt etwas anderes. Ist der Wert ein Typobjekt oder eine Instanz?

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
