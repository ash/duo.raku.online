---
title: Heredo
translations_gpt:
---

{% include menu.html %}

_Heredo_ permesas al unu klaso konstrui sur alia. Post la nomo de la nova klaso, vi skribas `is` kaj la nomon de alia klaso. La nova klaso tiam heredas ĉiujn atributojn kaj metodojn de tiu klaso. Tiu klaso nomiĝas ĝia _patra_ (aŭ _baza_) klaso.

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

`Dog is Animal` signifas, ke `Dog` estas speco de `Animal`. La klaso `Dog` havas neniun propran kodon. Sed ĝi jam havas la atributon `name` kaj la metodon `speak` el `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Objekto `Dog` ankaŭ validas kiel `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

La saĝa kongruado `~~` kontraŭ tipo estas vera, se la objekto havas tiun tipon. Ĝi ankaŭ estas vera, se la objekto heredas de tiu tipo. En la sekva temo, ida klaso anstataŭigas hereditan metodon per sia propra versio.

{% include nav.html %}
