---
title: Een heredoc
translations_gpt:
---

{% include menu.html %}

## Opgave

Schrijf een brief die een bestelling bevestigt. Gebruik een heredoc die *interpoleert*. Maak de brief met een paar variabelen. De variabelen zijn een klant `$name`, een `$item`, een `$price` en een `$count`. De prijs is voor één stuk. De heredoc zet de waarden van de variabelen erin. Hij rekent *ook* het totaal uit. Daarvoor staat er een `{ … }`-blok in de tekst (`$count * $price`).

Laat de inhoud van de heredoc inspringen. Die moet net zo ver inspringen als de code eromheen. Laat het afsluitwoord even ver inspringen als de tekst. Dan heeft de uitvoer geen inspringing. Druk het resultaat af.

## Voorbeeld

Neem `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` en `$count = 3`. Dan drukt het programma dit af. Er staan geen spaties aan het begin van de regels:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
