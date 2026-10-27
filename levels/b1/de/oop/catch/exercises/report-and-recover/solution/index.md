---
title: 'Lösung: Melden und erholen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Wenn das `die` wirft, wird der Rest des Blocks übersprungen. Also läuft die Zeile `$timeout = 60` nie, und `$timeout` behält seinen Standardwert `30`.

1. Das `CATCH` behandelt die Ausnahme und gibt eine Warnung aus. Also hält das Programm nicht an, und es läuft mit dem Standardwert weiter. Genau das bedeutet es, sich von einem Fehler zu *erholen*. Sie halten das Problem fest, nehmen stattdessen etwas Sicheres und machen weiter.

{% include nav.html %}
