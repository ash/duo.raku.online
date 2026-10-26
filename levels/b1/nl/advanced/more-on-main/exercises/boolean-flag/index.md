---
title: Een opdrachtregelvlag
translations_gpt: true
---

{% include menu.html %}

## Opgave

Een benoemde `Bool`-parameter van `MAIN` wordt een **vlag** die aan of uit staat. Als je `--flag` schrijft, wordt hij `True`, en als je hem weglaat, houdt hij zijn standaardwaarde. Schrijf een programma waarvan de `MAIN` `Bool :$shout = False` aanneemt. Het moet `HELLO` afdrukken als de vlag aan staat, en `hello` als dat niet zo is.

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
