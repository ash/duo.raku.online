---
title: 'Solution: Ampeln'
---

{% include menu.html %}

Hier ist die Idee der Lösung. Ein Array enthält die vier Zustände der Ampeln. Wir „schleifen“ das Indexieren dieses Arrays:

```raku
my @lights = <gelb rot gelb grün>;
```

Zählen Sie zuerst die Sekunden seit dem Start. Verwenden Sie diese Zahl direkt als Index im Array. Später wird die Zahl größer als 3. Dann gehen Sie zurück zum Anfang des Arrays. Das macht der Modulo-Operator `%`. Die Länge des Arrays ist `@lights.elems`. Aber hier müssen Sie die Methode `elems` nicht aufrufen. Das Array ist ein Operand von `%`. Darum wandelt Raku den Namen des Arrays in eine Zahl um. Diese Umwandlung ergibt die Anzahl der Elemente.

## Code

Hier ist die Lösung:

```raku
my @lights = <gelb rot gelb grün>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Finde das Programm in der Datei [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Ausgabe

Führen Sie das Programm aus. Probieren Sie dann auch andere Werte im Programm aus.

```console
$ raku exercises/positionals/traffic-lights.raku
grün
gelb
rot
```

{% include nav.html %}
