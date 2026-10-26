---
title: 'Solutio: Vexillum lineae mandati'
translations_gpt: true
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Codicem fontem in fasciculo [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku) invenire potes.

## Exitus

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Commentarii

1. Parametrus nominatus typi `Bool` vexillum fit. Cum `--shout`, `$shout` est `True`. Sine eo `$shout` valorem praefinitum servat, `False`.

1. Tum operator ternarius `HELLO` vel `hello` imprimit. Optio `--name=value` valorem habet. Vexillum valorem non habet. Una res tantum refert: adestne vexillum an non?

{% include nav.html %}
