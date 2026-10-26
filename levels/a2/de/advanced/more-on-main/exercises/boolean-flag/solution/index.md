---
title: 'Solution: Ein Befehlszeilen-Flag'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Den Quellcode finden Sie in der Datei [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Ausgabe

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Kommentare

1. Ein benannter Parameter vom Typ `Bool` wird zu einem Flag. Mit `--shout` ist `$shout` gleich `True`. Ohne das Flag behält `$shout` den Standardwert, `False`.

1. Dann gibt der ternäre Operator `HELLO` oder `hello` aus. Eine `--name=wert`-Option hat einen Wert. Ein Flag hat keinen Wert. Nur eine Sache zählt: Ist das Flag da oder nicht?

{% include nav.html %}
