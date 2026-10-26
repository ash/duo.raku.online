---
title: Quiz — Itemkontext
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

Der Kontextualisierer `$( … )` setzt den Elementkontext. Also ist das Array ein einzelner Wert und keine Liste von Elementen. Deshalb sieht die `for`-Schleife ein Element und führt ihren Körper nur einmal aus. Also steht `$n` am Ende bei `1`. Ohne `$( )` würde die Schleife dreimal laufen.

</div>

{% include nav.html %}
