---
title: Hereditas
translations_gpt:
---

{% include menu.html %}

Per _hereditatem_ una classis super alteram classem aedificare potest. Ad hoc, scribe `is` post nomen novae classis. Deinde scribe nomen alterius classis. Nova classis ab altera classe heredat. Omnia eius attributa et methodos accipit. Altera classis est classis _parens_, vel classis _basis_.

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

`Dog is Animal` hoc significat: `Dog` est genus quoddam `Animal`. Nihil novi in `Dog` scribimus. Sed `Dog` iam attributum `name` ex `Animal` habet. Etiam methodum `speak` ex `Animal` habet:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Obiectum `Dog` etiam est `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Comparatione callida `~~` obiectum cum genere comparare potes. Effectus verus est cum obiectum hoc genus habet. Etiam verus est cum obiectum ab hoc genere heredat. Argumentum sequens classem filiam tractat. Classis filia a classe parente heredat. Methodum parentis sua versione substituere potest.

{% include nav.html %}
