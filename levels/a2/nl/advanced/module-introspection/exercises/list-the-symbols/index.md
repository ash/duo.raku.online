---
title: De symbolen oplijsten
translations_gpt:
---

{% include menu.html %}

## Opgave

Hier is een module in het bestand `Circle.rakumod`. Hij heeft twee `our`-variabelen:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Schrijf een programma. Het gebruikt de module. Eerst drukt het programma het aantal namen in het pakket van de module af. Dan drukt het de namen af. Ze moeten in alfabetische volgorde staan.

## Voorbeeld

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
