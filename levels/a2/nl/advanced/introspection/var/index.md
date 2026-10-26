---
title: '`VAR` gebruiken'
---

{% include menu.html %}

`VAR` is een pseudo-methode. Die geeft het containerobject achter een variabele terug. Voor een scalar variabele geeft `.VAR` zijn `Scalar`-container terug.

## `^name`

Nu heb je de container. Je kunt de naam van zijn klasse opvragen met `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` op de variabele geeft het type van de _waarde_ terug. Dat is `Int` of `Str`. `.VAR.^name` geeft het type van de _container_ terug. In beide gevallen is dat `Scalar`.

## `default`

De methode `default` geeft de standaardwaarde van de container terug. Een lege container geeft je deze waarde. Hij heeft geen eigen waarde. Je kunt de standaardwaarde zelf instellen met de trait `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Misschien stel je geen standaardwaarde in. Dan is de standaardwaarde het type van de container. Een container zonder type heeft de standaardwaarde `Any`. Het maakt niet uit welke waarde er nu in zit:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Voor een container met een type is de standaardwaarde dat type:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

De methode `name` geeft de naam van de container terug, met de sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Haal `^name` en `name` niet door elkaar. `^name` geeft het type. `name` geeft de naam van de variabele.

{% include nav.html %}
