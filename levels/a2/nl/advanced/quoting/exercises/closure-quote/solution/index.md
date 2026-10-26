---
title: 'Solution: Een closure in een q-string'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Je kunt de broncode vinden in het bestand [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Uitvoer

```
$x squared is 100
```

## Opmerkingen

1. De `q`-vorm laat de tekst meestal zoals hij is. Het bijwoord `:c` (closure) verandert dat. Het zet interpolatie van `{ … }`-code in de tekst aan. Binnen de accolades is `$x` echte code. Daarom geeft `{$x ** 2}` `100`.

1. De `$x` buiten de accolades blijft precies zoals hij is. Dat komt omdat het scalaire bijwoord `:s` *niet* aan staat. Dat is precies het idee van één bijwoord voor elke functie. Je krijgt code in de tekst. Maar je zet niet ook de interpolatie van `$`-variabelen aan.

1. Je kunt meerdere bijwoorden samen gebruiken. Voeg ook `:s` toe. Dan interpoleert Raku ook de eerste `$x`. Nu staan beide functies aan:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
