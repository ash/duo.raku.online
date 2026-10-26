---
title: 'Solution: Eine Warnung unterdrücken'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Wenn man das undefinierte `$name` in den String setzt, gibt es normalerweise die Warnung „use of uninitialized value“. Mit `quietly` um den Ausdruck herum ist die Warnung versteckt, also wird nur der Gruß ausgegeben.

1. Wie `do` gibt `quietly` den Wert seines Blocks zurück. Also wird der fertige String in `$greeting` gespeichert. Der fehlende Name lässt darin eine leere Lücke.

1. `quietly` versteckt nur die Warnung, und der Wert ist immer noch undefiniert. Wenn du stattdessen mit dem fehlenden Wert *umgehen* willst, gib einen Standardwert an. Nutze dafür den Defined-or-Operator `//`. `$name // 'friend'` ergibt `'friend'`, wenn `$name` undefiniert ist. Also gibt `"Hello, " ~ ($name // 'friend') ~ "!"` den Text `Hello, friend!` ganz ohne Warnung aus.

{% include nav.html %}
