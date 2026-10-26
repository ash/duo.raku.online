---
title: Quiz — Der Doppelpunkt-Aufruf
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Der Doppelpunkt nimmt den *ganzen* Rest der Anweisung. Das alles wird zur Liste der Argumente. Also ist `substr: 0, 3` dasselbe wie `substr(0, 3)`. Beide Argumente gehen an `substr`. Es beginnt bei Index `0` und nimmt `3` Zeichen. Das Ergebnis ist `pro`.

</div>

{% include nav.html %}
