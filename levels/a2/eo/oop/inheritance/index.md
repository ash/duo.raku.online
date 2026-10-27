---
title: Heredo
translations_gpt:
---

{% include menu.html %}

_Heredo_ permesas al unu klaso konstrui sur alia klaso. Por tio, skribu `is` post la nomo de la nova klaso. Poste skribu la nomon de la alia klaso. La nova klaso heredas de la alia klaso. Ĝi ricevas ĉiujn ĝiajn atributojn kaj metodojn. La alia klaso estas la _patra_ klaso, aŭ la _baza_ klaso.

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

`Dog is Animal` signifas, ke `Dog` estas speco de `Animal`. Ni skribas nenion novan en `Dog`. Sed `Dog` jam havas la atributon `name` el `Animal`. Ĝi ankaŭ havas la metodon `speak` el `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Objekto `Dog` ankaŭ estas `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Per `~~` vi povas saĝe kongruigi objekton kun tipo. La rezulto estas vera, kiam la objekto havas ĉi tiun tipon. Ĝi ankaŭ estas vera, kiam la objekto heredas de ĉi tiu tipo. La sekva temo estas pri ida klaso. Ida klaso heredas de patra klaso. Ĝi povas anstataŭigi metodon de sia patro per sia propra versio.

{% include nav.html %}
