---
title: 'Lösung: Eine Schleife überleben'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Ausgabe

```
ok: 1
caught: bad: 2
ok: 3
```

## Kommentare

1. Der `CATCH`-Phaser behandelt Ausnahmen aus dem Rumpf der Schleife. Das `die` in der zweiten Runde wirft so eine Ausnahme. `CATCH` fängt sie. Also beendet der Fehler das Programm nicht.

1. `CATCH` behandelt die Ausnahme. Dann läuft die Schleife einfach mit dem nächsten Wert weiter. Darum gibt das Programm trotzdem `ok: 3` aus.

{% include nav.html %}
