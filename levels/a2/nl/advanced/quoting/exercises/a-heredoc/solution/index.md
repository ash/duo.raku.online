---
title: 'Solution: Een heredoc'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Je kunt de broncode vinden in het bestand [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Uitvoer

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Opmerkingen

1. De heredoc begint met `qq:to`, niet met `q:to`. Daarom interpoleert hij. Hij werkt als een `qq`-string. Hij vult de scalars `$name`, `$count` en `$item` in. Hij voert *ook* code in de tekst uit. Het blok `{$count * $price}` berekent `3 * 25`. Daarom staat het totaal `75` in de tekst.

1. Kijk naar de dubbele aanhalingstekens in `"$item"`. Hier zijn het gewoon normale tekens. In een heredoc zijn aanhalingstekens geen scheidingstekens. Daarom hebben ze geen backslash nodig. Raku drukt de aanhalingstekens af zoals ze zijn. Maar Raku interpoleert `$item` toch.

1. De inhoud en het afsluitende `END` hebben allebei vier spaties ervoor. Raku haalt de inspringing van het afsluitwoord van elke regel weg. Daarom komen deze vier spaties nooit in de string. De uitvoer begint aan de linkerkant.

1. De heredoc eindigt al met een nieuwe regel. Daarom gebruikt het programma `print`, niet `say`. `say` voegt nog een nieuwe regel toe. Dat geeft een extra lege regel.

{% include nav.html %}
