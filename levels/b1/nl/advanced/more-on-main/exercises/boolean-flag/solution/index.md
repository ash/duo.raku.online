---
title: 'Solution: Een opdrachtregelvlag'
translations_gpt: true
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Je kunt de broncode vinden in het bestand [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Uitvoer

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Opmerkingen

1. Een benoemde `Bool`-parameter wordt een vlag. Met `--shout` wordt `$shout` op `True` gezet. Als je de vlag weglaat, houdt hij de standaardwaarde `False`.

1. De ternaire operator drukt dan `HELLO` of `hello` af, afhankelijk van de vlag. Een `--naam=waarde`-optie heeft een waarde, maar een vlag niet. Het enige wat telt, is of de vlag er is.

{% include nav.html %}
