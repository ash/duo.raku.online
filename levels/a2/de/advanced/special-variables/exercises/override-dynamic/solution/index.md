---
title: 'Solution: Die dynamische Variable überschreiben'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Du findest den Quellcode in der Datei [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Ausgabe

```
INFO: working
DEBUG: working
```

## Kommentare

1. `task` ruft `log-it` auf. Aber sie verwendet `$*prefix` nie. Trotzdem kommt der Wert bei `log-it` an. Die dynamische Suche geht durch den Aufrufstapel zurück. Sie geht an `task` vorbei. Sie erreicht den Code, der in diesem Moment auf dem Stapel ist.

1. Die beiden Blöcke setzen verschiedene Werte. Also gibt *derselbe* Aufruf `task()` jedes Mal ein anderes Präfix. Darum sind dynamische Variablen nützlich. Informationen erreichen Code weit unten in der Kette der Aufrufe. Keine Routine in der Mitte muss sie als Argument weitergeben.

{% include nav.html %}
