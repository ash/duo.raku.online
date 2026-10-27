---
title: 'Lösung: Ausgabe und Fehler'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Du findest den Quellcode in der Datei [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Ausgabe

Sie sehen beide Ströme auf dem Bildschirm. Zuerst kommen die Zwischenstände, dann das Endergebnis:

```
running total: 3
running total: 8
running total: 15
15
```

Hier werfen wir die Standardfehlerausgabe weg. Nur die echte Ausgabe bleibt übrig:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Kommentare

1. `$*OUT` ist der Handle für die Standardausgabe. `$*ERR` ist der Handle für die Standardfehlerausgabe. Jeder von ihnen hat seine eigene Methode `say`.

1. Jede Runde der Schleife addiert die nächste Zahl. Dann schreibt sie den Zwischenstand nach `$*ERR`. Nur die Endsumme geht nach `$*OUT`. Auf dem Bildschirm sehen Fortschritt und Ergebnis gleich aus. Aber sie gehen durch verschiedene Ströme. `2>/dev/null` schickt die Standardfehlerausgabe weg. Also bleibt nur die Endsumme `15` übrig.

{% include nav.html %}
