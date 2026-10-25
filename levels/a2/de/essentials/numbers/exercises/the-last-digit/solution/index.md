---
title: 'Solution: Die letzte Ziffer'
---

{% include menu.html %}

Hier ist die Idee der Lösung. Verwenden Sie die Modulo-Division durch 10. Sie liefert die letzte Ziffer der Zahl.

## Code

Hier ist die Lösung:

```raku
my $n = prompt 'Geben Sie eine Zahl ein: ';
my $d = $n % 10;
say "Die letzte Ziffer von $n ist $d.";
```

🦋 Finden Sie das Programm in der Datei [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Ausgabe

Führen Sie das Programm aus und geben Sie eine positive ganze Zahl ein:

```console
$ raku exercises/numbers/the-last-digit.raku
Geben Sie eine Zahl ein: 1234
Die letzte Ziffer von 1234 ist 4.
```

## Kommentar

Seien Sie vorsichtig mit negativen Zahlen. Hier bekommen Sie nicht das erwartete Ergebnis. Zum Beispiel ist `-11 % 10` gleich `9`, nicht `1`.

{% include nav.html %}
