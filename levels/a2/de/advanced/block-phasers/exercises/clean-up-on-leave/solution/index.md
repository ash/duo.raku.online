---
title: 'Solution: Beim Verlassen aufräumen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Zuerst gibt das Programm `Working` aus. Dann verlässt `return` sofort die Subroutine. Also gibt das Programm `never reached` nie aus.

1. Der Rumpf endet früh. Aber der `LEAVE`-Phaser läuft trotzdem beim Hinausgehen. Er gibt `Cleanup` aus. Darauf kannst du dich immer verlassen. Deshalb ist `LEAVE` der richtige Ort, um Ressourcen freizugeben. Er läuft immer, egal wie der Block endet.

{% include nav.html %}
