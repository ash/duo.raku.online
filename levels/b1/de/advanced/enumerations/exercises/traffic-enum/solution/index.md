---
title: 'Solution: Ampeln'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `my Light $current` ist eine normale Variable, und du kannst sie ändern. Die einzige Grenze ist, dass sie ein `Light` enthalten muss. Wenn du die nächste Konstante zuweist, schaltet die Ampel weiter. Die Zahl folgt jedes Mal dem Namen: `0`, `1`, `2`.

1. `$current++` sieht so aus, als sollte es von selbst zur nächsten Farbe gehen. Aber es bricht mit einem Typprüfungsfehler ab. `++` nimmt die Konstante als einfache Zahl und gibt einen `Int` zurück (`red` wird zu `1`). Aber ein `Int` passt nicht zum Typ `Light`. Deshalb schaltest du die Ampel weiter, indem du die nächste Konstante zuweist, wie oben.

1. Die Typprüfung gilt für jede Zuweisung, nicht nur für die erste. `$current` akzeptiert `red`, `amber` oder `green`. Etwas, das kein `Light` ist, führt zu einem Typprüfungsfehler. Das gilt zum Beispiel für eine einfache Zahl oder einen String.

{% include nav.html %}
