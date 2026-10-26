---
title: Een opdrachtregelvlag
translations_gpt: true
---

{% include menu.html %}

## Opgave

Een benoemde parameter van `MAIN` kan het type `Bool` hebben. Dan wordt hij een **vlag**. Een vlag staat aan of uit. Als je `--flag` schrijft, is hij `True`. Als je hem weglaat, houdt hij zijn standaardwaarde. Schrijf een programma met `MAIN`. Die neemt `Bool :$shout = False` aan. Met de vlag drukt het programma `HELLO` af. Zonder de vlag drukt het `hello` af.

## Voorbeeld

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
