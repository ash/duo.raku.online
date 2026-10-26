---
title: Attributa legenda et scribenda
translations_gpt:
---

{% include menu.html %}

Ex more, accessor ex `has $.name` _solum legendus_ est. Constructor attributo valorem eius dat. Constructor est methodus quae obiectum facit, hic `new`. Postea codex extra obiectum valorem legere potest. Sed eum mutare non potest. Tempta ei novum valorem assignare. Hoc errorem dat:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Programma cum hoc errore desinit:

```
Cannot modify an immutable Str (Rex)
```

Visne valorem per accessorem mutare? Tum attributum proprietate `is rw` nota:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Nunc accessor receptaculum reddit in quo scribere potes. Itaque assignatio operatur. `name` obiecti nunc est `Max`.

{% include nav.html %}
