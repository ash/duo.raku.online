---
title: 'Solution: Die dynamische Variable überschreiben'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `task` ruft `log-it` auf, erwähnt aber nie `$*prefix`. Trotzdem erreicht der Wert `log-it`. Die dynamische Suche geht nach außen durch den Aufrufstapel, an `task` vorbei. Sie erreicht den, der zu dieser Zeit auf dem Stapel ist.

1. Die beiden Blöcke setzen verschiedene Werte. Also gibt *derselbe* `task()`-Aufruf jedes Mal ein anderes Präfix. Das macht dynamische Variablen nützlich. Der Kontext erreicht tief verschachtelten Code. Du musst ihn nicht als Argument durch jede Routine dazwischen reichen.

{% include nav.html %}
