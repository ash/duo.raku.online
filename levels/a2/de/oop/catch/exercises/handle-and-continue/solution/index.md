---
title: 'Lösung: Behandeln und weitermachen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Ausgabe

```
processed ok
skipped (bad): boom
processed ok
```

## Kommentare

1. Der `CATCH`-Phaser steht im Block für ein Element. Also behandelt er ein `die` nur für dieses Element. Er behandelt die Ausnahme genau dort. Also kommt sie nie aus dem Block heraus. Sie kann nicht die ganze Schleife anhalten.

1. Das ist ein häufiger Fall für `CATCH`, nicht für `try`. Eine Runde der Schleife schlägt fehl. Das Programm behandelt den Fehler genau dort. Dann geht die Schleife zum nächsten Element weiter. Das mittlere Element schlägt fehl. Aber das Programm verarbeitet die beiden `ok`-Elemente trotzdem.

{% include nav.html %}
