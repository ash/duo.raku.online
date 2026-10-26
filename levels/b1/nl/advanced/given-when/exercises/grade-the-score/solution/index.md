---
title: 'Solution: Levensfase op basis van leeftijd'
translations_gpt: true
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Je kunt de broncode vinden in het bestand [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Uitvoer

```
adult
```

## Opmerkingen

1. Deze oplossing mengt twee soorten `when`. De eerste is een *voorwaarde*, `$_ < 0`, waarbij `$_` het topic is dat `given` instelt. Die filtert de ongeldige leeftijden eruit. De andere zijn *bereiken*, die de geldige leeftijden in fasen verdelen.

1. De volgorde is belangrijk. De controle op een negatieve leeftijd komt eerst. Daardoor draait die voordat er een bereik wordt geprobeerd. De waarde `30` valt in `20..64`, dus het programma drukt `adult` af.

1. Het `default`-blok dekt elke leeftijd van 65 en ouder. Geen van de genoemde bereiken vangt deze leeftijden op.

Je kunt dit ook omdraaien en `default` juist de *ongeldige* invoer laten opvangen. Noem elke bekende fase, ook `senior` als de voorwaarde `$_ >= 65`. Behandel alles wat overblijft, zoals een negatieve leeftijd, als ongeldig:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Hier is `default` een echte "geen van de bovenstaande"-tak. Welke versie beter leest, is een kwestie van smaak. Zet de controle vooraan als het ongeldige geval een uitzondering is. Of maak het de `default` als alle geldige fasen duidelijk genoemd zijn.

{% include nav.html %}
