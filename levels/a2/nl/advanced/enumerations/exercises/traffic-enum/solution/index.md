---
title: 'Solution: Verkeerslichten'
translations_gpt: Dutch
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Je kunt de broncode vinden in het bestand [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Uitvoer

```
red is 0
amber is 1
green is 2
```

## Opmerkingen

1. `my Light $current` is een gewone variabele. Je kunt de waarde ervan veranderen. Maar hij kan alleen een `Light` bevatten. Wijs de volgende constante toe, en het licht gaat verder. Elke keer verandert het getal mee met de naam: `0`, `1`, `2`.

1. Het lijkt of `$current++` vanzelf naar het volgende licht gaat. Maar het mislukt met een typecontrole-fout. `++` ziet de constante alleen als zijn getal. Het geeft een `Int` terug: `red` wordt `1`. Maar een `Int` is geen `Light`. Om het licht te verplaatsen, wijs je dus de volgende constante toe, zoals hierboven.

1. Raku controleert het type bij elke toewijzing, niet alleen bij de eerste. `$current` neemt `red`, `amber` of `green` aan. Andere waarden neemt hij niet aan, zoals een getal of een tekenreeks. Die zijn geen `Light`. Zo'n toewijzing geeft een typecontrole-fout.

{% include nav.html %}
