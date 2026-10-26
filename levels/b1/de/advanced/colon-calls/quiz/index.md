---
title: Quiz — Der Doppelpunkt-Aufruf
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

Der Doppelpunkt nimmt den *ganzen* Rest der Anweisung als Argumentliste. Also ist `substr: 0, 3` dasselbe wie `substr(0, 3)`, und beide Argumente werden übergeben. Es beginnt bei Index `0` und nimmt `3` Zeichen, was `pro` ergibt.

</div>

{% include nav.html %}
