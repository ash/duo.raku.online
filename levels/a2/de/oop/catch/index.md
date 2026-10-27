---
title: Der `CATCH`-Phaser
translations_gpt:
---

{% include menu.html %}

Der `try`-Block ist leicht zu benutzen. Aber für `try` ist der ganze Block ein Stück. Der Block funktioniert entweder, oder er schlägt fehl. Der `CATCH`-Phaser gibt Ihnen mehr Kontrolle. Eine Ausnahme ist ein Fehler, der das Programm anhält. Mit `CATCH` behandeln Sie die Ausnahme _innerhalb_ ihres Blocks. Das ist der Block mit dem Fehler. Dort entscheiden Sie, was zu tun ist.

`CATCH` ist ein Phaser. Ein Phaser ist ein spezieller Block. Raku führt ihn zu einem bestimmten Zeitpunkt von selbst aus. Phaser kennen Sie schon aus dem [Abschnitt über den Programmfluss](/de/advanced/phasers). Sie können `CATCH` an jede Stelle in einem Block schreiben. Er läuft nur, wenn Code in diesem Block eine Ausnahme wirft. Die Ausnahme bekommen Sie in der Themenvariablen `$_`:

```raku
{
    die 'Boom!';

    CATCH {
        default {
            say 'Caught: ' ~ .message;
        }
    }
}

say 'after';
```

Das Programm gibt aus:

```
Caught: Boom!
after
```

Der `default`-Block in `CATCH` behandelt jede Ausnahme. Wenn er fertig ist, gilt die Ausnahme als behandelt. Also hält das Programm nicht an. Es läuft nach dem Block mit dem `CATCH` weiter. Darum gibt das Programm `after` aus.

Ohne das `CATCH` hält das `die` das Programm an. Das Programm kommt nie zu `after`.

{% include nav.html %}
