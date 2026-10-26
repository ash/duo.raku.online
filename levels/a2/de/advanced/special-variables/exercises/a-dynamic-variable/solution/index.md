---
title: 'Solution: Eine dynamische Variable'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Du findest den Quellcode in der Datei [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Ausgabe

```
running as guest
running as admin
```

## Kommentare

1. Das Twigil `*` macht `$*user` dynamisch. `whoami` bekommt die Variable nie als Parameter. Sie findet den Wert durch den Aufrufstapel. Also zeigt der erste Aufruf den Standardwert, `guest`.

1. Der innere Block deklariert `$*user` noch einmal als `admin`. Das gilt, solange der Block läuft. *Dieselbe* `whoami` sieht jetzt `admin`. Die dynamische Suche prüft, wer jetzt auf dem Aufrufstapel ist. Du überschreibst eine dynamische Variable in einem Geltungsbereich. Dann bekommt der ganze Code, den du von dort aufrufst, mehr Rechte. Und du änderst `whoami` überhaupt nicht.

{% include nav.html %}
