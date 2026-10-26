---
title: 'Oplossing: Kilometers naar mijlen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Je kunt de broncode vinden in het bestand [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Uitvoer

```
6.21
```

## Opmerkingen

1. De omrekening heeft geen object nodig. Dus is het een klassemethode. Het programma roept die direct aan op `Converter`.

1. Een klassemethode kan toch parameters hebben. Hier krijgt ze het aantal kilometers. Ze geeft de mijlen terug.

{% include nav.html %}
