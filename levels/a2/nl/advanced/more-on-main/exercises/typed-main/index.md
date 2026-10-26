---
title: Een getypte MAIN
translations_gpt: true
---

{% include menu.html %}

## Opgave

Een parameter van `MAIN` kan een type hebben. Raku controleert ook dit type voordat de body draait. Schrijf een programma met `MAIN`. Die neemt één parameter, `Int $n`. `MAIN` drukt `$n` keer twee af. Wat als het argument geen goed geheel getal is? Dan past de signatuur niet. Raku drukt in plaats daarvan het gebruiksbericht af. Zo controleert Raku het argument voor je, en je doet geen extra werk.

## Voorbeeld

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
