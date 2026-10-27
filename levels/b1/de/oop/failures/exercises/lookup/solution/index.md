---
title: 'Lösung: Nachschlagen oder nicht gefunden'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `lookup('z')` ruft `fail` auf und liefert daher ein undefiniertes `Failure`.

1. Das Ergebnis ist undefiniert, also gibt das Programm `not found` aus. Es versucht nicht, den fehlgeschlagenen Wert zu verwenden.

1. Ein `Failure` trägt immer noch die Ausnahme mit sich, die beschreibt, was schiefgegangen ist. Sie bekommen sie mit `$r.exception`. Das markiert den Fehlschlag auch als behandelt, also wirft er später nicht. Dann liest `.message` den Text, der an `fail` übergeben wurde, `no such key`.

{% include nav.html %}
