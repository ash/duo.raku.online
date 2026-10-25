---
title: 'Solution: Ungerade Indizes'
---

{% include menu.html %}

Sie können diese Aufgabe mit der `loop`-Konstruktion lösen. Dann erhöhen Sie die Schleifenvariable bei jeder Iteration um 2. Sie können aber auch eine `for`-Schleife verwenden. Diese läuft über die Zahlen von 1 bis zur halben Länge des Arrays. Dann multiplizieren Sie jede Zahl mit zwei.

## Code

Hier ist die Lösung:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Finden Sie das Programm in der Datei [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Ausgabe

Führen Sie zuerst das Programm mit den ursprünglichen Datenelementen aus.

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

Prüfen Sie, dass das neue Element mit ungeradem Index in der Ausgabe erscheint:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Kommentare

Im nächsten Teil des Kurses kommen wir auf diese Aufgabe zurück. Dann lösen wir sie auf eine völlig andere Weise.

{% include nav.html %}
