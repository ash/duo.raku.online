---
title: '`WHAT` gebruiken'
---

{% include menu.html %}

`WHAT` is een pseudo-methode. Die geeft je het type van een waarde. Je gebruikt hem bijna zoals `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Allebei drukken ze het type af, maar ze zien er een beetje anders uit. `.^name` geeft alleen de naam. `WHAT` geeft het type zelf, als een type object. Hij toont het tussen ronde haakjes:

```
Int
(Int)
```

Neem een variabele zonder typebeperking. Eerst is zijn type `Any`. Dan wijs je een waarde toe. Nu tonen `^name` en `WHAT` allebei het type van deze waarde:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Met een typebeperking kent Raku het type meteen. Dat geldt zelfs voordat je een waarde toewijst:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Type objects vergelijken

`WHAT` geeft het type object zelf terug. Dus kun je twee type objects vergelijken. Gebruik daarvoor de operator `===`. Dat is de _waarde-identiteit_-operator. Hij controleert of beide kanten dezelfde waarde zijn. Elk type heeft maar één type object. Dus controleert `===` makkelijk of twee waarden hetzelfde type hebben:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` vergelijkt getallen. Maar `===` vergelijkt identiteit. Dus werkt hij direct met type objects. Hij werkt ook met andere waarden.

{% include nav.html %}
