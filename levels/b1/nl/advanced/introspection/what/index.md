---
title: '`WHAT` gebruiken'
---

{% include menu.html %}

`WHAT` is een pseudo-methode waarmee je het type van een waarde krijgt. Je kunt hem op bijna dezelfde manier gebruiken als `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Allebei drukken ze het type af, maar ze zien er iets anders uit. `.^name` geeft alleen de naam, en `WHAT` toont het type object tussen haakjes:

```
Int
(Int)
```

Als een variabele geen typebeperking heeft, is zijn type eerst `Any`. Nadat je een waarde toewijst, tonen `^name` en `WHAT` allebei het type ervan:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Met een typebeperking is het type meteen bekend, zelfs voordat je iets toewijst:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Type objects vergelijken

`WHAT` geeft het type object zelf terug, dus je kunt twee type objects vergelijken met `===`. Dit is de _waarde-identiteit_-operator. Hij controleert of beide kanten precies dezelfde waarde zijn. Elk type heeft maar één type object. Dit is dus een nette manier om te controleren of twee waarden hetzelfde type hebben:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` vergelijkt getallen, maar `===` vergelijkt identiteit. Dus werkt hij direct met type objects, en ook met andere waarden.

{% include nav.html %}
