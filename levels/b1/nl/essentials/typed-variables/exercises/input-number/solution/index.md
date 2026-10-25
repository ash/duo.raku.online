---
title: 'Solution: Gebruikersinvoer naar een getal converteren'
---

{% include menu.html %}

Het programma kan zo eenvoudig zijn als dit:

## Code

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Je kunt de broncode vinden in het bestand [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Voorbeeld

Voer het uit en typ een geheel getal, dat positief of negatief kan zijn:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Opmerkingen

Zoals we [gezien hebben](/nl/essentials/typed-variables/allomorphs), geeft `prompt` hier een `IntStr`-waarde terug. Je kunt die zonder enige omzetting aan een `Int`-variabele toewijzen.

Let wel op: sommige strings kunnen niet naar een geheel getal worden omgezet. Als je zo'n string invoert, stopt het programma met een uitzondering.

{% include nav.html %}
