---
title: Quiz — Pointy Blocks
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Ein Pointy Block kann mehrere Parameter haben. `-> $a, $b` nimmt zwei. Hier speichert das Programm den Block nicht in einer Variablen. Der Block steht in Klammern. Das Programm ruft ihn sofort mit `(3, 4)` auf. Also bekommt `$a` den Wert `3`, und `$b` bekommt `4`. Der Block multipliziert die beiden. Das Ergebnis ist `12`. Dann gibt das `.say` am Ende das Ergebnis aus.

</div>

{% include nav.html %}
