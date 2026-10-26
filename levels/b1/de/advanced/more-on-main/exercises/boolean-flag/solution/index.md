---
title: 'Solution: Ein Befehlszeilen-Flag'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ein benannter `Bool`-Parameter wird zu einem Flag. Wenn Sie `--shout` angeben, wird `$shout` auf `True` gesetzt. Wenn Sie es weglassen, behält es den Standardwert `False`.

1. Der ternäre Operator gibt dann je nach Flag `HELLO` oder `hello` aus. Eine `--name=wert`-Option hat einen Wert, ein Flag aber nicht. Es zählt nur, ob das Flag da ist.

{% include nav.html %}
