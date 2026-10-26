---
title: 'Solution: Standaardkorting'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

## Code

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Je kunt de broncode vinden in het bestand [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Natuurlijk zou het eenvoudiger zijn om de variabele meteen de waarde `0` te geven:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Uitvoer

```
0
15
```

## Opmerkingen

1. De `is default(0)`-eigenschap geeft de container een waarde om te gebruiken tot er iets wordt toegewezen. Als je de variabele leest, krijg je `0`. Anders dan bij een niet-gedeclareerde standaardwaarde is er geen waarschuwing over een _niet-geïnitialiseerde waarde_.

1. Na de toewijzing bevat de container `15`, en de standaardwaarde is niet meer belangrijk.

{% include nav.html %}
