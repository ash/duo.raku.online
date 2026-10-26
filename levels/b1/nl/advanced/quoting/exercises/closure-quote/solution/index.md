---
title: 'Solution: Een closure in een q-string'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De `q`-vorm laat meestal alle tekst zoals hij is. Het bijwoord `:c` (closure) zet daarin interpolatie van `{ … }`-code aan. Binnen de accolades is `$x` echte code, dus `{$x ** 2}` geeft `100`.

1. De `$x` buiten de accolades blijft precies zoals hij geschreven is. Dat komt omdat het scalaire bijwoord `:s` *niet* is aangezet. Dat is precies het nut van één bijwoord voor elke functie. Je krijgt code in de string zonder dat je ook `$`-interpolatie aanzet.

1. Je kunt bijwoorden combineren. Als je ook `:s` toevoegt, wordt de eerste `$x` ook geïnterpoleerd. Nu staan beide functies tegelijk aan:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
