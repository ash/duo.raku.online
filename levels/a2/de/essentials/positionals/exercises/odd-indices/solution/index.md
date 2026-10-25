---
title: 'Solution: Ungerade Indizes'
---

{% include menu.html %}

Sie können diese Aufgabe mit `loop` lösen. Addieren Sie jedes Mal 2 zur Schleifenvariable. Sie können aber auch eine `for`-Schleife verwenden. Die Schleife geht von 1 bis zur halben Länge des Arrays. Dann multiplizieren Sie jede Zahl mit zwei.

## Code

Hier ist die Lösung:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Finden Sie das Programm in der Datei [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Ausgabe

Führen Sie das Programm zuerst mit den ursprünglichen Daten aus.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Fügen Sie dann ein weiteres Element zu den Daten hinzu:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Das neue Element hat einen ungeraden Index. Prüfen Sie, dass es in der Ausgabe steht:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Kommentare

Diese Aufgabe kommt im nächsten Teil des Kurses wieder. Dort lösen wir sie ganz anders.

{% include nav.html %}
