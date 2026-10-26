---
title: Een heredoc
translations_gpt:
---

{% include menu.html %}

## Opgave

Gebruik een *interpolerende* heredoc om een brief te maken die een bestelling bevestigt. Gebruik een paar variabelen: een klant `$name`, een `$item`, een `$price` en een `$count`. De prijs is voor één stuk. De heredoc moet de variabelen interpoleren. Hij moet *ook* het totaal in de tekst berekenen, met een ingebed `{ … }`-blok (`$count * $price`).

Laat de inhoud van de heredoc inspringen, zodat die gelijk staat met de code eromheen. Zet het afsluitwoord gelijk met de tekst. Dan komt de inspringing niet in de uitvoer. Druk het resultaat af.

## Voorbeeld

Neem `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` en `$count = 3`. Dan drukt het programma het volgende af, zonder spaties aan het begin:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
