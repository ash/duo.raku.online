---
title: Lees-schrijfattributen
translations_gpt:
---

{% include menu.html %}

Standaard is de accessor die `has $.name` maakt _alleen-lezen_. De constructor, `new`, stelt de waarde in wanneer hij het object maakt. Daarna kan code buiten het object de waarde lezen, maar niet veranderen. Eraan toekennen is een fout:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Het programma stopt met deze melding:

```
Cannot modify an immutable Str (Rex)
```

Wil je de waarde via de accessor kunnen wijzigen? Markeer het attribuut dan met de trait `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Nu geeft de accessor een schrijfbare container terug. Dus werkt de toekenning, en de `name` van het object verandert in `Max`.

{% include nav.html %}
