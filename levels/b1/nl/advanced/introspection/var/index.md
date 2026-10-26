---
title: '`VAR` gebruiken'
---

{% include menu.html %}

`VAR` is een pseudo-methode die het containerobject achter een variabele teruggeeft. Voor een scalar variabele geeft een aanroep van `.VAR` de `Scalar`-container erachter.

## `^name`

Met de container kun je de naam van zijn klasse opvragen met `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` op de variabele geeft het type van de _waarde_, `Int` of `Str`. Maar `.VAR.^name` geeft het type van de _container_, en dat is in beide gevallen `Scalar`.

## `default`

De `default`-methode geeft de standaardwaarde van de container terug. Dit krijg je als de container geen eigen waarde bevat. Je kunt hem zelf instellen met de `is default`-trait:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Als je geen standaardwaarde instelt, is de standaardwaarde het type van de container. Voor een container zonder type is dat `Any`. Zijn huidige waarde maakt niet uit:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Voor een container met typebeperking is het het type uit de beperking:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

De `name`-methode geeft de naam van de container, samen met zijn sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Pas op dat je `^name` en `name` niet verwart. De eerste geeft het type, en de tweede geeft de eigen naam van de variabele.

{% include nav.html %}
