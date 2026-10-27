---
title: 'Oplossing: Noteer een waarschuwing'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Je kunt de broncode vinden in het bestand [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Uitvoer

```
Warning: the value is negative
3
```

## Opmerkingen

1. `note` stuurt de waarschuwing naar de standaardfout. Dat doet hij alleen als de waarde echt negatief is. `say` stuurt het echte resultaat naar de standaarduitvoer. Het resultaat is de absolute waarde, `3`.

1. De waarschuwing gaat naar de standaardfout. Dus komt ze niet in de echte uitvoer van het programma. `2>/dev/null` gooit de standaardfout weg. Dan blijft alleen de `3` over.

{% include nav.html %}
