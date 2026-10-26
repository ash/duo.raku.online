---
title: 'Solution: Wie viele Ziffern'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say (2 ** 1000).chars;
```

🦋 Du findest den Quellcode in der Datei [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Ausgabe

```
302
```

## Kommentare

1. Ganze Zahlen in Raku haben keine Größengrenze. Deshalb berechnet Raku den genauen Wert von `2 ** 1000`. Raku rundet die Zahl nicht. Die Zahl läuft nicht über.

1. Normalerweise ist `chars` eine Methode für Strings. Du kannst sie auch auf einer ganzen Zahl aufrufen. Dann macht sie die Zahl zuerst zu Text, zur Basis 10. Danach zählt sie die Zeichen. Diese Zahl hat kein Minuszeichen und keinen Dezimalpunkt. Also ist die Anzahl der Zeichen gleich der Anzahl der Ziffern: `302`.

{% include nav.html %}
