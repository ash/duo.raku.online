---
title: 'Solution: Ein Paket'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Variable und die Subroutine sind beide mit `our` deklariert. Also werden beide Teil des `Temperature`-Namensraums, und du kannst sie von außen erreichen.

1. Die Variable erreichst du als `$Temperature::freezing`: das Sigil, der Package-Name, dann der Variablenname. Die Subroutine wird als `Temperature::fahrenheit(100)` aufgerufen. Die Umrechnung von `100` ergibt `100 * 9/5 + 32`, also `212`.

1. Ein einfaches `package` gibt dir nur den Namensraum. Für eine wiederverwendbare Bibliothek würden wir stattdessen `module` benutzen. Wenn wir mit Objekten arbeiten, würden wir eine `class` benutzen. Aber der Namensraum funktioniert in jedem Fall gleich.

{% include nav.html %}
