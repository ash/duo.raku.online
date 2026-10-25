---
title: Standardwerte
---

{% include menu.html %}

Sowohl Positionsparameter als auch benannte Parameter können Standardwerte haben. Wenn ein Parameter einen Standardwert hat, dürfen Sie ihn beim Aufruf der Funktion weglassen.

## Positionsparameter

Hier ist ein Beispiel für einen Standardwert bei einem Positionsparameter:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

Beim ersten Aufruf ist der Name das einzige Argument, deshalb ist das Ergebnis `Hello, Merinda!`. Der zweite Aufruf verwendet den Standardwert und druckt `Hello, World!`.

Wenn eine Funktion mehrere Parameter hat, können nur die letzten Parameter Standardwerte haben:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # korrekt
# sub f($a = 10, $b = 20, $c, $d) { . . . } # FALSCH
```

## Benannte Parameter

Standardwerte für benannte Parameter setzen Sie mit der gleichen Syntax:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

Die Reihenfolge der benannten Parameter spielt keine Rolle. Deshalb kann jeder von ihnen einen Standardwert haben, sogar der erste:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
