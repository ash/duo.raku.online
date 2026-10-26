---
title: 'Solution: Ampeln'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Du findest den Quellcode in der Datei [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Ausgabe

```
red is 0
amber is 1
green is 2
```

## Kommentare

1. `my Light $current` ist eine normale Variable. Du kannst ihren Wert ändern. Aber sie kann nur ein `Light` enthalten. Weise die nächste Konstante zu, dann schaltet die Ampel weiter. Jedes Mal ändert sich die Zahl mit dem Namen: `0`, `1`, `2`.

1. Es sieht so aus, als ob `$current++` von selbst zur nächsten Farbe geht. Aber dann kommt ein Typprüfungsfehler. `++` sieht die Konstante nur als ihre Zahl. Er gibt einen `Int` zurück: `red` wird zu `1`. Aber ein `Int` ist kein `Light`. Um die Ampel weiterzuschalten, weise also die nächste Konstante zu, wie oben.

1. Raku prüft den Typ bei jeder Zuweisung, nicht nur bei der ersten. `$current` nimmt `red`, `amber` oder `green` an. Sie nimmt keine anderen Werte an, wie eine Zahl oder einen String. Diese Werte sind kein `Light`. So eine Zuweisung gibt einen Typprüfungsfehler.

{% include nav.html %}
