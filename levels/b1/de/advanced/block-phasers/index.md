---
title: Block-bezogene Phasers
---

{% include menu.html %}

Raku hat Phaser für das ganze Programm, aber auch noch andere. Diese Phaser sind an das Leben eines einzelnen Blocks oder einer Schleife gebunden.

## Einen Block betreten und verlassen

Der `ENTER`-Phaser läuft jedes Mal, wenn das Programm einen Block betritt. Der `LEAVE`-Phaser läuft jedes Mal, wenn es den Block verlässt. Es ist egal, in welche Zeile du sie schreibst:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Die Ausgabe zeigt, dass `ENTER` zuerst und `LEAVE` zuletzt läuft. Der Rumpf des Blocks läuft dazwischen:

```
before block
entering
inside
leaving
after block
```

`LEAVE` ist besonders nützlich, weil er auch dann läuft, wenn der Block früh endet. Deshalb ist er ein zuverlässiger Ort, um eine Ressource freizugeben.

Ein Phaser kann statt einer Anweisung einen ganzen `{ }`-Block enthalten. Du kannst auch mehrere davon haben. Wenn ein Block mehr als einen `LEAVE` hat, laufen sie in umgekehrter Reihenfolge. Der letzte, den du eingerichtet hast, läuft zuerst. Also funktioniert der Block wie ein Stapel, von oben nach unten:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

Das Programm öffnet Ressource `A` zuerst und schließt sie zuletzt:

```
open A
open B
work
close B
close A
done
```

Diese Reihenfolge nach „last in, first out“ ist genau das, was du zum Aufräumen brauchst. Was du zuletzt eingerichtet hast, wird zuerst entfernt. Der `END`-Phaser des ganzen Programms funktioniert genauso. Auch mehrere `END`-Blöcke laufen umgekehrt zu der Reihenfolge, in der sie im Code stehen.

## Schleifen-Phaser

In Schleifen gibt es drei weitere Phaser für die Phasen der Schleife. `FIRST` läuft einmal vor dem ersten Durchlauf, und `LAST` läuft einmal nach dem letzten. `NEXT` läuft am Ende jedes Durchlaufs:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Das ist die Ausgabe der Schleife:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Wie andere Phaser können `FIRST`, `NEXT` und `LAST` überall im Code stehen. Jeder von ihnen läuft zu seinem eigenen Zeitpunkt.

{% include nav.html %}
