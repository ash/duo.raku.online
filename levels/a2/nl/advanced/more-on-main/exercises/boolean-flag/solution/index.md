---
title: 'Solution: Een opdrachtregelvlag'
translations_gpt: true
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Een benoemde parameter van het type `Bool` wordt een vlag. Met `--shout` is `$shout` gelijk aan `True`. Zonder de vlag houdt `$shout` de standaardwaarde, `False`.

1. Dan drukt de ternaire operator `HELLO` of `hello` af. Een optie als `--naam=waarde` heeft een waarde. Een vlag heeft geen waarde. Alleen één ding telt: is de vlag er of niet?

{% include nav.html %}
