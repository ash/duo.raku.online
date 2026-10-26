---
title: 'Solution: Verdrievoudigen'
translations_gpt: De oplossing van 'Verdrievoudig het'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Je kunt de broncode vinden in het bestand [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Uitvoer

```
21
```

## Opmerkingen

1. Het pointy block heeft maar één parameter, `$x`. Toch gebruikt het `$factor`, een variabele uit het bereik eromheen. Het vastleggen van zulke variabelen maakt er een closure van.

1. Als `$factor` gelijk is aan `3`, geeft `$scale(7)` het resultaat `21`. Als je `$factor` verandert, vermenigvuldigt hetzelfde blok met de nieuwe waarde:

```raku
$factor = 5;
say $scale(7); # 35
```

De closure legt de *variabele* zelf vast. Hij legt niet de waarde vast van het moment waarop het blok werd geschreven. Daarom ziet de latere aanroep de nieuwe `$factor` en geeft hij `35` terug.

{% include nav.html %}
