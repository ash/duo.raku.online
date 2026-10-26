---
title: 'Solution: Ein Paket'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Du findest den Quellcode in der Datei [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Ausgabe

```
0
212
```

## Kommentare

1. Die Variable und die Subroutine haben beide `our`. Also sind beide Teil des Namensraums `Temperature`. Code außerhalb des Packages kommt an sie heran.

1. Du bekommst die Variable mit `$Temperature::freezing`. Zuerst kommt das Sigil, dann der Package-Name, dann der Variablenname. Die Subroutine rufst du als `Temperature::fahrenheit(100)` auf. Für `100` rechnet sie `100 * 9/5 + 32`. Das Ergebnis ist `212`.

1. Ein einfaches `package` gibt nur den Namensraum. Für eine Bibliothek würden wir stattdessen `module` benutzen. Eine Bibliothek kannst du immer wieder benutzen. Später, mit Objekten, würden wir eine `class` benutzen. Aber der Namensraum funktioniert in all diesen Fällen gleich.

{% include nav.html %}
