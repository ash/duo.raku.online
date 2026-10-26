---
title: Methodi
translations_gpt:
---

{% include menu.html %}

Attributa obiecto data sua dant. Per _methodos_ obiectum etiam res agere potest. Methodus est subprogramma in classe. Methodum in obiecto vocas. Ut methodum facias, scribe verbum `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Ut methodum in obiecto voces, punctum adhibe. Idem fit cum accessore:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Intra methodum, `self` est obiectum. Est obiectum in quo methodum vocavisti. Attributa per accessores eorum accipis. Eos ut `$.name`, `$.age` et cetera scribis. Eos etiam intra chordam cum virgulis duplicibus adhibere potes:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Argumenta sequentia tres res tractant. Prima res sunt attributa privata. Ad ea methodos habere debes, et nunc methodos habes. Secunda res sunt methodi cum parametris. Tertia res sunt methodi quae alias methodos vocant.

{% include nav.html %}
