---
title: Block-bezogene Phasers
---

{% include menu.html %}

Du kennst schon die Phaser für das ganze Programm. Raku hat auch Phaser für einen Block oder eine Schleife. Sie gehören zum Leben dieses Blocks oder dieser Schleife.

## In einen Block hinein und wieder heraus

Der `ENTER`-Phaser läuft jedes Mal, wenn das Programm in einen Block geht. Der `LEAVE`-Phaser läuft jedes Mal, wenn das Programm den Block verlässt. Ihre Stelle im Block ist egal:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Schau dir die Ausgabe an. `ENTER` läuft zuerst, und `LEAVE` läuft zuletzt. Der Rumpf des Blocks liegt dazwischen:

```
before block
entering
inside
leaving
after block
```

`LEAVE` ist sehr nützlich. Er läuft auch dann, wenn der Block früh endet. Also kannst du dort sicher eine Ressource freigeben, zum Beispiel eine offene Datei.

Ein Phaser kann einen ganzen `{ }`-Block haben, nicht nur eine Anweisung. Du kannst auch mehrere Phaser haben. Ein Block kann mehr als einen `LEAVE` haben. Dann laufen sie in umgekehrter Reihenfolge. Der letzte läuft zuerst. Das funktioniert wie ein Stapel. Was zuletzt hineinkommt, kommt zuerst wieder heraus:

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

Das Programm öffnet Ressource `A` zuerst. Es schließt sie zuletzt:

```
open A
open B
work
close B
close A
done
```

Diese Reihenfolge heißt „last in, first out“. Sie passt genau zum Aufräumen. Was du zuletzt einrichtest, entfernst du zuerst. Der `END`-Phaser für das ganze Programm funktioniert genauso. Mehrere `END`-Blöcke laufen auch in umgekehrter Reihenfolge.

## Phaser für Schleifen

Schleifen haben drei weitere Phaser. Sie markieren die Schritte der Schleife. `FIRST` läuft einmal, vor der ersten Runde. `LAST` läuft einmal, nach der letzten Runde. `NEXT` läuft am Ende jeder Runde:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Die Schleife gibt aus:

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

Das ist wie bei anderen Phasern. Du kannst `FIRST`, `NEXT` und `LAST` überall in die Schleife schreiben. Jeder läuft zu seiner eigenen Zeit.

{% include nav.html %}
