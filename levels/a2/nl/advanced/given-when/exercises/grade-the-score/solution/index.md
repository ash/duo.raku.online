---
title: 'Solution: Levensfase op basis van leeftijd'
translations_gpt: true
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Deze oplossing heeft twee soorten `when`. De eerste is een *voorwaarde*, `$_ < 0`. Hier is `$_` het topic van `given`. Deze voorwaarde vangt de leeftijden die geen zin hebben. De andere `when`-blokken zijn *bereiken*. Ze verdelen de juiste leeftijden over fasen.

1. De volgorde is belangrijk. De controle op een negatieve leeftijd komt eerst. Zo draait die vóór alle bereiken. De waarde `30` zit in `20..64`. Daarom drukt het programma `adult` af.

1. Het `default`-blok is voor elke leeftijd van 65 en ouder. Geen van de bereiken in de lijst heeft deze leeftijden.

Er is ook een andere manier. Laat `default` de *ongeldige* invoer opvangen. Noem elke bekende fase. Schrijf `senior` als de voorwaarde `$_ >= 65`. Al het andere is ongeldig, bijvoorbeeld een negatieve leeftijd:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Hier betekent `default` echt "geen van de bovenstaande". Welke versie is beter? Dat kies je zelf. Is het ongeldige geval zeldzaam? Zet de controle dan vooraan. Noem je alle geldige fasen duidelijk? Maak het ongeldige geval dan de `default`.

{% include nav.html %}
