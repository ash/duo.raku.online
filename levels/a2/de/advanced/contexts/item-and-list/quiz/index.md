---
title: Quiz — Itemkontext
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Der Kontextualisierer `$( … )` setzt den Elementkontext. Also ist das Array ein einzelner Wert, keine Liste von Elementen. Die `for`-Schleife sieht ein Element. Also führt sie ihren Körper nur einmal aus. Am Ende ist `$n` gleich `1`. Ohne `$( )` läuft die Schleife dreimal.

</div>

{% include nav.html %}
