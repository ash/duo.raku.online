---
title: Quiz — Kontexte
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

Der Präfix `+` setzt den numerischen Kontext. Der numerische Wert eines Arrays ist die Anzahl seiner Elemente. Also ist `+@a` gleich `3` und nicht die Summe. Verwende `~` für den Stringkontext, der `10 20 30` ergibt. Um die Elemente wirklich zu addieren, verwende `[+]`.

</div>

{% include nav.html %}
