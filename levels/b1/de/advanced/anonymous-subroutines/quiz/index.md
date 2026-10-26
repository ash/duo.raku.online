---
title: Quiz — Pointy Blocks
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
(-> $a, $b { $a * $b })(3, 4).say
```

{:.quiz}
1 | 12
0 | 7
0 | 34
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Ein Pointy Block kann mehrere Parameter auflisten: `-> $a, $b` nimmt zwei. Hier wird der Block gar nicht in einer Variablen gespeichert. Er steht in Klammern und wird sofort mit `(3, 4)` aufgerufen. Also bekommt `$a` den Wert `3`, und `$b` bekommt `4`. Der Block multipliziert sie und ergibt `12`, und das `.say` am Ende gibt das Ergebnis aus.

</div>

{% include nav.html %}
