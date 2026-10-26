---
title: 'Solution: Eine dynamische Variable'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Das Twigil `*` macht `$*user` dynamisch. `whoami` bekommt die Variable nie als Parameter. Stattdessen findet sie den Wert, indem sie nach außen durch den Aufrufstapel schaut. Also zeigt der erste Aufruf den Standardwert, `guest`.

1. Der innere Block deklariert `$*user` noch einmal als `admin`, und das gilt, solange der Block läuft. *Dieselbe* `whoami` sieht jetzt `admin`. Das liegt daran, dass die dynamische Suche dem folgt, der gerade auf dem Stapel ist. Wenn du eine dynamische Variable in einem Geltungsbereich überschreibst, bekommt alles mehr Rechte, was von dort aufgerufen wird. Und du musst `whoami` überhaupt nicht ändern.

{% include nav.html %}
