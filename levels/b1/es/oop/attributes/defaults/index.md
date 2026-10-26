---
title: Valores por defecto
translations_gpt:
---

{% include menu.html %}

Puedes dar a un atributo un _valor por defecto_. Se usa cuando creas un objeto sin un valor para ese atributo. Escribe el valor por defecto después del atributo, con `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Fíjate en que puedes dar un tipo a los atributos, igual que haces con las variables.

Cuando no pasas `weight` a `new`, el atributo toma su valor por defecto:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Aun así, puedes reemplazar el valor por defecto si pasas un valor:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Un atributo sin valor por defecto y sin valor de `new` simplemente queda sin definir. Es exactamente como una variable escalar nueva.

{% include nav.html %}
