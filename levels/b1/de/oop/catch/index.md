---
title: Der `CATCH`-Phaser
translations_gpt:
---

{% include menu.html %}

Der `try`-Block ist praktisch, aber er behandelt den ganzen Block als eine Einheit. Der Block funktioniert entweder, oder er funktioniert nicht. Der `CATCH`-Phaser gibt Ihnen mehr Kontrolle. Mit ihm können Sie eine Ausnahme _innerhalb_ des Blocks behandeln, in dem sie passiert ist. Dann entscheiden Sie, was zu tun ist.

`CATCH` ist ein Phaser, wie die Phaser, die Sie im [Abschnitt über den Programmfluss](/de/advanced/phasers) gesehen haben. Sie können ihn an jede Stelle in einem Block schreiben. Er läuft nur, wenn in diesem Block eine Ausnahme geworfen wird. Die Ausnahme bekommen Sie als Themenvariable `$_`:

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

Der `default`-Block innerhalb von `CATCH` behandelt jede Ausnahme. Nachdem er gelaufen ist, gilt die Ausnahme als behandelt. Also hält das Programm nicht an. Es läuft hinter dem Block um das `CATCH` weiter, und darum wird `after` ausgegeben.

Ohne das `CATCH` würde das `die` das Programm beenden, bevor es zu `after` kommt.

{% include nav.html %}
