---
title: 'Oplossing: Kilometers naar mijlen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De omrekening hangt niet af van een bepaald object. Dus is het een klassemethode, en het programma roept die direct aan op `Converter`.

1. Een klassemethode kan nog steeds parameters aannemen. Hier krijgt ze het aantal kilometers en geeft ze de mijlen terug.

{% include nav.html %}
