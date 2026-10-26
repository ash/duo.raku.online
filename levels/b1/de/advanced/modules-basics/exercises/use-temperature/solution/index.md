---
title: 'Solution: Den Konverter verwenden'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

Das Programm, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Du findest die Quelldateien im Verzeichnis [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Ausgabe

```console
$ raku -I. temperature.raku 100
212
```

## Kommentare

1. `use Temperature` lädt das Modul und importiert seine exportierte Subroutine `c-to-f`. Also kann das Programm sie direkt aufrufen.

1. `sub MAIN($celsius)` empfängt das Kommandozeilenargument. Also wählst du die Temperatur, wenn du das Programm ausführst. Sie ist nicht fest in den Code geschrieben. Wenn du das Programm ohne Argument ausführst, gibt Raku automatisch eine Verwendungsnachricht aus.

1. Raku muss das Modul finden können. Deshalb führst du das Programm mit `-I.` aus. Dann sucht Raku im aktuellen Verzeichnis nach `Temperature.rakumod`. Die Umrechnung von `100` °C ergibt `212` °F.

{% include nav.html %}
