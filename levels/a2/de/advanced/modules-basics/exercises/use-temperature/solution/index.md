---
title: 'Solution: Den Konverter verwenden'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `use Temperature` lädt das Modul. Es importiert auch die exportierte Subroutine `c-to-f`. Also kann das Programm sie direkt aufrufen.

1. `sub MAIN($celsius)` bekommt das Kommandozeilenargument. Also wählst du die Temperatur, wenn du das Programm startest. Sie steht nicht fest im Code. Ohne Argument gibt Raku automatisch eine Verwendungsnachricht aus. Diese Nachricht zeigt, wie man das Programm startet.

1. Raku muss das Modul finden können. Also startest du das Programm mit `-I.`. Dann sucht Raku `Temperature.rakumod` im aktuellen Verzeichnis. Das Programm rechnet `100` °C in `212` °F um.

{% include nav.html %}
