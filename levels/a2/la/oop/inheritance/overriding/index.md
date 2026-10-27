---
title: Methodos superscribere
translations_gpt:
---

{% include menu.html %}

Classis filia methodos ex classe parente heredat. Sed etiam propriam versionem talis methodi habere potest. Hoc _superscribere_ appellamus. Methodum in obiecto classis filiae vocas. Tum versio filiae currit. Versio parentis non currit.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` et `Cat` ambo `speak` superscribunt. Methodum `intro` ex `Animal` heredant et eam non mutant. Haec methodus vocat `self.speak`. Haec vocatio propriam obiecti `speak` adhibet:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Itaque eadem `intro` hereditata diversos effectus dat. Nam quodque obiectum propriam `speak` habet. Haec est una ex ideis principalibus programmationis ad obiecta directae. Codex communis est. Sed pro quoque genere obiecti aliter operatur.

{% include nav.html %}
