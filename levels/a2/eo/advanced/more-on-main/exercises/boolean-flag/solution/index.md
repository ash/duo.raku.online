---
title: 'Solvo: Komandlinia flago'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Eligo

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Komentoj

1. Nomita parametro de la tipo `Bool` fariĝas flago. Kun `--shout`, `$shout` estas `True`. Sen ĝi, `$shout` konservas la defaŭltan valoron, `False`.

1. Poste la ternara operatoro presas `HELLO` aŭ `hello`. Opcio `--name=value` havas valoron. Flago ne havas valoron. Nur unu afero gravas: ĉu la flago estas tie aŭ ne?

{% include nav.html %}
