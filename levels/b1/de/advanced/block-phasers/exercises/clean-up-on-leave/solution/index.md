---
title: 'Solution: Beim Verlassen aufräumen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Du findest den Quellcode in der Datei [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Ausgabe

```
Working
Cleanup
```

## Kommentare

1. Nachdem `Working` ausgegeben ist, verlässt `return` sofort die Subroutine. Deshalb wird `never reached` nie ausgegeben.

1. Der Rumpf wurde früh verlassen. Trotzdem läuft der `LEAVE`-Phaser auf dem Weg nach draußen und gibt `Cleanup` aus. Darauf kannst du dich immer verlassen. Genau deshalb ist `LEAVE` der richtige Ort, um Ressourcen freizugeben. Er läuft, egal wie der Block endet.

{% include nav.html %}
