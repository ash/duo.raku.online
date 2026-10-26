---
title: 'Solution: Een heredoc'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De heredoc begint met `qq:to` in plaats van `q:to`, dus hij interpoleert. Net als een `qq`-string vult hij de scalars `$name`, `$count` en `$item` in. Hij voert *ook* code in de tekst uit: het blok `{$count * $price}` berekent `3 * 25`. Daarom staat het totaal, `75`, meteen in de tekst.

1. De dubbele aanhalingstekens rond `"$item"` zijn hier gewoon normale tekens. In een heredoc is er geen scheidingsteken dat je moet escapen. Daarom worden de aanhalingstekens afgedrukt zoals ze er staan, terwijl `$item` toch wordt geïnterpoleerd.

1. De inhoud en het afsluitende `END` hebben dezelfde inspringing van vier spaties. De inspringing van het afsluitwoord wordt van elke regel verwijderd. Daarom komen die vier spaties nooit in de string. De uitvoer begint aan de linkerkant.

1. De heredoc eindigt al met een nieuwe regel. Daarom gebruikt de code `print` in plaats van `say`. Met `say` zou je een tweede nieuwe regel krijgen, en dus een extra lege regel.

{% include nav.html %}
