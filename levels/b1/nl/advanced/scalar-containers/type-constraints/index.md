---
title: Typebeperkingen
translations_gpt:
---

{% include menu.html %}

In het [deel Essentieel](/nl/essentials/typed-variables/type-constraints/) gaf je variabelen een type met typebeperkingen. Het is belangrijk om te zien dat de _container_ deze regel controleert. Hij beslist welke waarden hij kan accepteren.

Deze declaratie maakt een scalaire container aan die alleen gehele getallen kan bewaren:

```raku
my Int $int;
```

Een container met een type accepteert alleen waarden die bij zijn type passen. Daarom zijn al deze toewijzingen goed:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Raku verandert het type hier niet automatisch. In Raku is een kommagetal een `Rat`. Je kunt het dus niet toewijzen:

```raku
my Int $int;
$int = 123.45;
```

Je krijgt al een fout tijdens het compileren:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Om de fout te voorkomen, zet je de waarde zelf om:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Laat je niet in de war brengen door de twee punten in `123.45.Int`. De eerste is het decimaalteken. De tweede roept de `Int`-methode aan op de rationele waarde, die een `Rat` is.

{% include nav.html %}
