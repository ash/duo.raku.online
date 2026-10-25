---
title: '`while` en `until` als zinsmodificatoren'
---

{% include menu.html %}

Je kunt `while` en `until` ook als statement modifiers gebruiken, dus na een statement. Dit werkt [op dezelfde manier](/nl/essentials/conditional-checks/modifiers) als bij `if` en `unless`.

Hier is een voorbeeld dat werkt zoals modulo-deling, dus het berekent de rest:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Hier is `-=` een operator die in één stap aftrekt en toewijst. `$x -= 3` betekent dus hetzelfde als `$x = $x - 3`.

De `while`-modifier herhaalt `$x -= 3` zolang de conditie `$x > 2` `True` is. Als die `False` wordt, stopt de lus.

Merk op dat als de conditie vanaf het begin `False` is, de statement nooit draait.

Hetzelfde programma kan ook `until` gebruiken, maar dan moet je de conditie omkeren:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
