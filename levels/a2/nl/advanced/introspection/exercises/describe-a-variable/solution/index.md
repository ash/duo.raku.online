---
title: 'Solution: Een variabele beschrijven'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Je kunt de broncode vinden in het bestand [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Uitvoer

```
Str
Scalar
$lang
```

## Opmerkingen

1. `.^name` geeft het type van de waarde in de container terug. Dit type is `Str`.

1. `.VAR` geeft de container achter de variabele terug. `.^name` op de container geeft `Scalar` terug. Dit is het type van de container zelf.

1. `.VAR.name` geeft de naam van de variabele terug, met zijn sigil: `$lang`. Let op: dit is de methode `name`. Het is niet de meta-methode `^name` van de eerste twee regels.

{% include nav.html %}
