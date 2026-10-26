---
title: Valores por defecto
translations_gpt:
---

{% include menu.html %}

Un atributo puede tener un _valor por defecto_. A veces creas un objeto sin un valor para el atributo. Entonces Raku usa el valor por defecto. Escribe el valor por defecto después del atributo, con `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Fíjate en una cosa más. Puedes dar un tipo a un atributo, como a una variable. Entonces el valor debe tener este tipo.

Aquí, `new` no recibe ningún `weight`. Así que el atributo toma el valor por defecto:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Pero aún puedes dar tu propio valor. Este valor reemplaza al valor por defecto:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

A veces un atributo no tiene valor por defecto. Además, no pasas ningún valor para él a `new`. Entonces el atributo simplemente no está definido. Es como una variable escalar nueva.

{% include nav.html %}
