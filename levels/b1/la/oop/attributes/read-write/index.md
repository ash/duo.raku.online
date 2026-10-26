---
title: Attributa legenda et scribenda
translations_gpt:
---

{% include menu.html %}

Ex more, accessor quem `has $.name` creat _solum legendus_ est. Constructor, `new`, valorem ponit cum obiectum creat. Postea codex extra obiectum valorem legere potest, sed mutare non potest. Ei assignare error est:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Programma cum hoc nuntio desinit:

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

Nunc accessor receptaculum scribendum reddit. Itaque assignatio operatur, et `name` obiecti fit `Max`.

{% include nav.html %}
