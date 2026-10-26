---
title: Quiz — Kontexte
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Der Präfix `+` setzt den numerischen Kontext. Als Zahl ist ein Array die Anzahl seiner Elemente. Also ist `+@a` gleich `3`. Das ist nicht die Summe. Für den Stringkontext verwende `~`. Das ergibt `10 20 30`. Für die Summe der Elemente verwende `[+]`.

</div>

{% include nav.html %}
