---
title: 'Solution: Verkeerslichten'
translations_gpt: Dutch
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `my Light $current` is een gewone variabele, en je kunt hem veranderen. De enige beperking is dat hij een `Light` moet bevatten. Als je de volgende constante toewijst, gaat het licht verder. Het getal volgt elke keer de naam: `0`, `1`, `2`.

1. Het lijkt alsof `$current++` vanzelf naar het volgende licht zou moeten gaan. Maar het mislukt met een typecontrole-fout. `++` gebruikt de constante als gewoon getal en geeft een `Int` terug (`red` wordt `1`). Maar een `Int` past niet in het type `Light`. Je verplaatst het licht dus door de volgende constante toe te wijzen, zoals hierboven.

1. De typecontrole werkt bij elke toewijzing, niet alleen bij de eerste. `$current` accepteert `red`, `amber` of `green`. Iets wat geen `Light` is, geeft een typecontrole-fout. Dat geldt bijvoorbeeld voor een gewoon getal of een tekenreeks.

{% include nav.html %}
