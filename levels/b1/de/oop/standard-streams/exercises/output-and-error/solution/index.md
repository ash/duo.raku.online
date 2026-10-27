---
title: 'Lösung: Ausgabe und Fehler'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

Beide Ströme erscheinen auf dem Bildschirm. Zuerst kommen die Zwischenstände und dann das Endergebnis:

```
running total: 3
running total: 8
running total: 15
15
```

Wenn Sie die Standardfehlerausgabe wegwerfen, bleibt nur die eigentliche Ausgabe übrig:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Kommentare

1. `$*OUT` und `$*ERR` sind die Handles für die Standardausgabe und die Standardfehlerausgabe. Jeder von ihnen hat seine eigene Methode `say`.

1. Jede Runde addiert die nächste Zahl und schreibt den Zwischenstand nach `$*ERR`. Nur die Endsumme geht nach `$*OUT`. Auf dem Bildschirm sehen Fortschritt und Ergebnis gleich aus. Aber sie gehen durch verschiedene Ströme. Wenn `2>/dev/null` die Standardfehlerausgabe wegschickt, bleibt also nur die abschließende `15` übrig.

{% include nav.html %}
