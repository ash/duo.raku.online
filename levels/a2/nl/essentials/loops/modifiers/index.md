---
title: '`while` en `until` als zinsmodificatoren'
---

{% include menu.html %}

Je kunt `while` of `until` ook na een statement zetten. We noemen dit een statement modifier. Je kent dit al [van `if` en `unless`](/nl/essentials/conditional-checks/modifiers).

Hier is een voorbeeld. Het berekent de rest, of wat er overblijft na het delen:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier is `-=` een operator. Hij doet twee dingen. Hij trekt een getal af. Hij bewaart ook het resultaat in de variabele. `$x -= 3` is dus hetzelfde als `$x = $x - 3`.

De `while`-modifier herhaalt de statement `$x -= 3`. Hij herhaalt die zolang `$x > 2` `True` is. Als `$x > 2` `False` is, stopt de lus.

Als de conditie aan het begin `False` is, draait de statement nooit.

Je kunt hetzelfde programma met `until` schrijven. Dan heb je de omgekeerde conditie nodig:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
