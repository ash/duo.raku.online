---
title: 'Solvo: Komandlinia flago'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Nomita `Bool`-parametro fariĝas flago. Se vi transdonas `--shout`, `$shout` fariĝas `True`. Se vi ne skribas ĝin, ĝi konservas la defaŭltan valoron `False`.

1. La ternara operatoro tiam presas `HELLO` aŭ `hello`, depende de la flago. Opcio `--name=value` havas valoron, sed flago ne havas. Gravas nur, ĉu la flago estas tie.

{% include nav.html %}
