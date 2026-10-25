---
title: Standardwerte
---

{% include menu.html %}

Positionsparameter und benannte Parameter können Standardwerte haben. Ein Parameter mit Standardwert ist nicht Pflicht. Beim Aufruf der Funktion können Sie ihn weglassen. Dann bekommt der Parameter seinen Standardwert.

## Positionsparameter

Hier ist ein Beispiel. Die Funktion hat einen Positionsparameter mit Standardwert:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

Der erste Aufruf übergibt einen Namen als einziges Argument. Deshalb druckt er `Hello, Merinda!`. Der zweite Aufruf verwendet den Standardwert. Er druckt `Hello, World!`.

Manchmal hat eine Funktion mehr als einen Parameter. Dann müssen die Standardwerte am Ende der Liste stehen:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # korrekt
# sub f($a = 10, $b = 20, $c, $d) { . . . } # FALSCH
```

## Benannte Parameter

Benannte Parameter bekommen Standardwerte auf die gleiche Weise:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

Die Reihenfolge der benannten Parameter spielt keine Rolle. Deshalb kann jeder von ihnen einen Standardwert haben. Auch der erste in der Liste kann einen haben:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
