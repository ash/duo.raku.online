---
title: Oefening ’Match het type‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Elke ingebouwde fout heeft een eigen exceptietype. Je kunt deze typen matchen. Schrijf een blok dat `1 / 0` berekent. Daarna probeert het blok het resultaat te gebruiken. Dat werpt een `X::Numeric::DivideByZero`. Voeg een `CATCH`-faser aan het blok toe. Gebruik daarin `when X::Numeric::DivideByZero`. Dat matcht precies dit type. Druk dan `cannot divide by zero` af.

## Voorbeeld

Het programma drukt af:

```
cannot divide by zero
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
