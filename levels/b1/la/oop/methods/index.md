---
title: Methodi
translations_gpt:
---

{% include menu.html %}

Attributa obiecto data dant, et _methodi_ ei agendi rationem dant. Methodus est subprogramma quod ad classem pertinet. Eam in obiecto vocas. Methodum per verbum `method` declaras:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Ut methodum in obiecto voces, punctum adhibe, sicut cum accessore:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Intra methodum, `self` est obiectum in quo methodus vocata est. Attributa per accessores eorum attingis. Eos ut `$.name`, `$.age` et cetera scribis. Etiam intra chordas duplicibus virgulis clausas operantur, ubi Raku valores eorum inserit:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Argumenta sequentia attributa privata tractant, quia nunc methodos habemus quae eis uti possunt. Deinde methodos tractant quae parametros accipiunt, et methodos quae alias methodos vocant.

{% include nav.html %}
