---
title: 'Solution: Wie viele Ziffern'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Raku berechnet `2 ** 1000` genau. Raku rundet die Zahl nicht, und sie läuft nicht über, weil ganze Zahlen beliebige Genauigkeit haben.

1. `chars` ist normalerweise eine String-Methode. Wenn du sie auf einer ganzen Zahl aufrufst, wandelt sie die Zahl zuerst in einen Dezimaltext um. Dann zählt sie die Zeichen. Hier gibt es kein Minuszeichen und keinen Dezimalpunkt. Also ist die Anzahl der Zeichen genau die Anzahl der Ziffern, `302`.

{% include nav.html %}
