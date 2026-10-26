---
title: 'Solution: Een variabele beschrijven'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `.^name` geeft het type van de waarde in de container, namelijk `Str`.

1. `.VAR` geeft de container achter de variabele. Dan geeft `.^name` daarop `Scalar` terug, en dat is het type van de container zelf.

1. `.VAR.name` geeft de naam van de variabele terug, `$lang`, met zijn sigil. Let op: dit is de `name`-methode. Het is niet de `^name` meta-methode die we op de eerste twee regels gebruikten.

{% include nav.html %}
