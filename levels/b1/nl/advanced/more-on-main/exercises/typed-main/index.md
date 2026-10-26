---
title: Een getypte MAIN
translations_gpt: true
---

{% include menu.html %}

## Opgave

Raku controleert ook het type van een `MAIN`-parameter voordat de body wordt uitgevoerd. Schrijf een programma waarvan de `MAIN` één `Int $n` aanneemt en `$n` keer twee afdrukt. Als het argument geen geldig geheel getal is, komt de signatuur niet overeen. Dan drukt Raku in plaats daarvan het gebruiksbericht af, dus je krijgt de controle gratis.

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
