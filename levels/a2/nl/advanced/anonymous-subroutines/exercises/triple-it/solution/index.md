---
title: 'Solution: Verdrievoudigen'
translations_gpt: De oplossing van 'Verdrievoudig het'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Het pointy block heeft maar één parameter, `$x`. Maar het gebruikt ook `$factor`. Deze variabele komt uit de code rond het blok. Een blok dat zulke variabelen bewaart, is een closure.

1. `$factor` is `3`, dus `$scale(7)` geeft `21`. Verander nu `$factor`. Dan gebruikt hetzelfde blok de nieuwe waarde:

```raku
$factor = 5;
say $scale(7); # 35
```

De closure bewaart de *variabele* zelf. Hij bewaart niet de oude waarde van de variabele. Daarom ziet de latere aanroep de nieuwe `$factor`. Die geeft `35` terug.

{% include nav.html %}
