---
title: 'Lösung: Behandeln und weitermachen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der `CATCH`-Phaser steht in dem Block, der für jedes Element läuft. Also behandelt er ein `die` nur für dieses eine Element. Die Ausnahme wird dort behandelt, also kommt sie nie heraus und hält die ganze Schleife nicht an.

1. Das ist ein typischer Fall, in dem `CATCH` besser ist als `try`. Ein Fehlschlag in einer Runde der Schleife wird genau dort behandelt, wo er passiert. Dann geht die Schleife zum nächsten Element weiter. Das mittlere Element schlägt fehl, aber die beiden `ok`-Elemente werden trotzdem verarbeitet.

{% include nav.html %}
