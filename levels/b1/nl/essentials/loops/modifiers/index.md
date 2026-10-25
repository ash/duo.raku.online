---
title: '`while` en `until` als zinsmodificatoren'
---

{% include menu.html %}

Zowel `while` als `until` kunnen worden gebruikt als statement modifiers, [op dezelfde manier](/nl/essentials/conditional-checks/modifiers) als `if` en `unless`.

Bekijk een voorbeeld dat modulo-deling nabootst, dat wil zeggen het vinden van de rest:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier is `-=` een operator die aftrekking en toewijzing samen doet. In dit geval is `$x -= 3` hetzelfde als `$x = $x - 3`.

De `while`-modifier herhaalt de statement `$x -= 3` zolang de conditie `$x > 2` `True` blijft. Zodra de conditie `False` wordt, stopt de lus.

Merk op dat als de conditie vanaf het begin `False` is, de statement helemaal niet draait.

Hetzelfde programma kan met `until` worden geschreven. Daarvoor moet je de conditie omkeren:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
