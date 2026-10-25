---
title: Standaardwaarden
---

{% include menu.html %}

Zowel positionele als benoemde parameters kunnen standaardwaarden hebben. Als een parameter een standaardwaarde heeft, mag je hem weglaten in een functieaanroep.

## Positionele parameters

Hier is een voorbeeld van een standaardwaarde voor een positionele parameter:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

In de eerste aanroep is de naam het enige argument, dus het resultaat is `Hello, Merinda!`. De tweede aanroep gebruikt de standaardwaarde en print `Hello, World!`.

Als een functie meerdere parameters heeft, kunnen alleen de laatste parameters standaardwaarden hebben:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # correct
# sub f($a = 10, $b = 20, $c, $d) { . . . } # FOUT
```

## Benoemde parameters

Je geeft benoemde parameters standaardwaarden met dezelfde syntaxis:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

De volgorde van benoemde parameters maakt niet uit. Dus elke parameter kan een standaardwaarde hebben, zelfs de eerste:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
