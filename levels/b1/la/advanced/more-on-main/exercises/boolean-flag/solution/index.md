---
title: 'Solutio: Vexillum lineae mandati'
translations_gpt: true
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Parametrus nominatus `Bool` vexillum fit. Si `--shout` tradis, `$shout` ad `True` ponitur. Si id omittis, valorem praefinitum `False` servat.

1. Operator ternarius tum `HELLO` vel `hello` imprimit, secundum vexillum. Optio `--name=value` valorem habet, sed vexillum non habet. Solum refert utrum vexillum adsit.

{% include nav.html %}
