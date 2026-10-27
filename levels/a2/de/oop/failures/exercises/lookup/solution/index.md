---
title: 'Lösung: Nachschlagen oder nicht gefunden'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Du findest den Quellcode in der Datei [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Ausgabe

```
not found
reason: no such key
```

## Kommentare

1. `lookup('z')` ruft `fail` auf. Also gibt es ein `Failure` zurück. Ein `Failure` ist ein undefinierter Wert mit einem Fehler darin.

1. Das Ergebnis ist undefiniert. Also gibt das Programm `not found` aus. Es versucht nicht, den fehlgeschlagenen Wert zu benutzen.

1. Ein `Failure` enthält immer noch eine Ausnahme. Die Ausnahme sagt, was schiefgegangen ist. `$r.exception` holt diese Ausnahme. Das markiert den Fehlschlag auch als behandelt. Also führt er später nicht zu einem Fehler. Dann liest `.message` den Text von `fail`. Dieser Text ist `no such key`.

{% include nav.html %}
