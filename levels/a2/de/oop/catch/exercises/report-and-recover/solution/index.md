---
title: 'Lösung: Melden und erholen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Du findest den Quellcode in der Datei [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Ausgabe

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Kommentare

1. Das `die` wirft eine Ausnahme. Dann überspringt Raku den Rest des Blocks. Also läuft die Zeile `$timeout = 60` nie. `$timeout` behält seinen Standardwert, `30`.

1. Das `CATCH` behandelt die Ausnahme. Es gibt eine Warnung aus. Also hält das Programm nicht an. Es läuft mit dem Standardwert weiter. Das bedeutet, sich von einem Fehler zu *erholen*. Sie notieren das Problem. Sie nehmen stattdessen etwas Sicheres. Dann machen Sie weiter.

{% include nav.html %}
