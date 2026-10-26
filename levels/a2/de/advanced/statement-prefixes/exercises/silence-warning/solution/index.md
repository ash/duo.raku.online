---
title: 'Solution: Eine Warnung unterdrücken'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Du findest den Quellcode in der Datei [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Ausgabe

```
Hello, !
```

## Kommentare

1. Hier kommt das undefinierte `$name` in den String. Normalerweise gibt das eine Warnung: „use of uninitialized value“. Aber der Ausdruck steht in `quietly`. Also bleibt die Warnung versteckt. Das Programm gibt nur den Gruß aus.

1. Wie `do` gibt `quietly` den Wert seines Blocks zurück. Also speichert das Programm den neuen String in `$greeting`. Der Name fehlt, also gibt es eine leere Lücke im String.

1. `quietly` versteckt nur die Warnung. Der Wert ist immer noch undefiniert. Vielleicht willst du mit dem fehlenden Wert *umgehen*. Dann gib einen Standardwert mit dem Defined-or-Operator `//` an. `$name // 'friend'` ergibt `'friend'`, wenn `$name` undefiniert ist. Also gibt `"Hello, " ~ ($name // 'friend') ~ "!"` den Text `Hello, friend!` aus. Es gibt überhaupt keine Warnung.

{% include nav.html %}
