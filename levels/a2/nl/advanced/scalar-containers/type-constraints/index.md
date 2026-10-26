---
title: Typebeperkingen
translations_gpt:
---

{% include menu.html %}

In het [deel Essentieel](/nl/essentials/typed-variables/type-constraints/) leerde je een variabele een type te geven. Dat deed je met een typebeperking. Hier is een belangrijk punt. De _container_ controleert deze regel. Hij beslist welke waarden hij accepteert.

Deze declaratie maakt een scalaire container aan. Die kan alleen gehele getallen bewaren:

```raku
my Int $int;
```

Een container met een type accepteert alleen waarden die bij het type passen. Daarom werken al deze toewijzingen:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

In dit geval verandert Raku het type niet vanzelf. In Raku is een kommagetal een `Rat`-waarde. Je kunt het dus niet toewijzen:

```raku
my Int $int;
$int = 123.45;
```

Je krijgt de fout tijdens het compileren. Dat is voordat het programma draait:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Zet de waarde zelf om. Dan is er geen fout:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Er staan twee punten in `123.45.Int`. Raak daardoor niet in de war. De eerste punt is het decimaalteken. De tweede punt roept de `Int`-methode aan. Deze methode werkt op de `Rat`-waarde, een rationaal getal.

{% include nav.html %}
