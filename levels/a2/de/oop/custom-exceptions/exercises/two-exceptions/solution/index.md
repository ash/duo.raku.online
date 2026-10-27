---
title: 'Lösung: Zwei Ausnahmetypen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Ausgabe

```
small
big
```

## Kommentare

1. In der ersten Runde wirft die Schleife eine `TooSmall`. In der zweiten Runde wirft sie eine `TooBig`. Jede Ausnahme entsteht in ihrem eigenen Block. Jeder Block hat sein eigenes `CATCH`.

1. Der `CATCH`-Phaser hat einen `when`-Zweig für jeden Ausnahmetyp. In jeder Runde läuft nur ein Zweig. Das ist der Zweig für den Typ der geworfenen Ausnahme. Also gibt die erste Runde `small` aus, und die zweite gibt `big` aus. Jeder `when`-Zweig ist eine Behandlung für einen Typ. So kann eine Gruppe von Behandlungen auf jede Art von Fehler anders reagieren.

{% include nav.html %}
