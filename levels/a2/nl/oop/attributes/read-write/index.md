---
title: Lees-schrijfattributen
translations_gpt:
---

{% include menu.html %}

Standaard is de accessor van `has $.name` _alleen-lezen_. De constructor geeft het attribuut zijn waarde. De constructor is de methode die het object maakt, hier `new`. Daarna kan code buiten het object de waarde lezen. Maar die code kan de waarde niet veranderen. Probeer er een nieuwe waarde aan toe te kennen. Dat geeft een fout:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Het programma stopt met deze fout:

```
Cannot modify an immutable Str (Rex)
```

Wil je de waarde via de accessor veranderen? Markeer het attribuut dan met de trait `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Nu geeft de accessor een container terug waarin je kunt schrijven. Dus werkt de toekenning. De `name` van het object is nu `Max`.

{% include nav.html %}
