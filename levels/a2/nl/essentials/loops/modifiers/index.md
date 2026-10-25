---
title: '`while` en `until` als zinsmodificatoren'
---

{% include menu.html %}

Je kunt `while` en `until` ook na een statement schrijven. Deze vorm heet een statement modifier. Het werkt [net als](/nl/essentials/conditional-checks/modifiers) `if` en `unless` na een statement.

Hier is een voorbeeld. Het berekent de rest van een deling:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier is `-=` een operator. Hij trekt tegelijk af en wijst toe. Dus `$x -= 3` betekent hetzelfde als `$x = $x - 3`.

De `while`-modifier herhaalt de statement `$x -= 3`. Hij herhaalt die zolang de conditie `$x > 2` `True` is. Als de conditie `False` wordt, stopt de lus.

Als de conditie aan het begin `False` is, draait de statement helemaal niet.

Je kunt hetzelfde programma met `until` schrijven. Daarvoor moet je de omgekeerde conditie gebruiken:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
