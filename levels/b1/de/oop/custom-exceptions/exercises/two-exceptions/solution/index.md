---
title: 'Lösung: Zwei Ausnahmetypen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Schleife wirft in der ersten Runde eine `TooSmall` und in der zweiten eine `TooBig`. Jede wird in einem eigenen Block geworfen, der sein eigenes `CATCH` hat.

1. Der `CATCH`-Phaser hat einen `when`-Zweig für jeden Ausnahmetyp. In jeder Runde läuft nur der Zweig, der zum geworfenen Typ passt. Also gibt die erste Runde `small` aus und die zweite `big`. So reagiert eine einzige Gruppe von Behandlungen auf jede Art von Fehler anders.

{% include nav.html %}
