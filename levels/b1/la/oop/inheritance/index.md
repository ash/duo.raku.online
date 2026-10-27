---
title: Hereditas
translations_gpt:
---

{% include menu.html %}

_Hereditas_ permittit ut una classis super alteram aedificet. Post nomen novae classis scribis `is` et nomen alterius classis. Nova classis tum omnia attributa et methodos illius classis heredat. Illa classis eius classis _parens_ (vel _basis_) appellatur.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
}

class Dog is Animal {
}
```

`Dog is Animal` significat `Dog` genus quoddam `Animal` esse. Classis `Dog` nullum codicem proprium habet. Sed iam attributum `name` et methodum `speak` ex `Animal` habet:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Obiectum `Dog` etiam pro `Animal` habetur:

```raku
say Dog.new ~~ Animal; # True
```

Comparatio callida `~~` contra genus vera est si obiectum illud genus habet. Etiam vera est si obiectum ab illo genere heredat. In argumento sequenti classis filia methodum hereditariam sua versione substituit.

{% include nav.html %}
