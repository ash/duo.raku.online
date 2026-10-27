---
title: Methodos superscribere
translations_gpt:
---

{% include menu.html %}

Classis filia propriam versionem methodi quam heredat habere potest. Hoc _superscribere_ appellatur. Pro obiecto classis filiae, vocatio methodi versionem filiae exsequitur. Versio parentis non currit.

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

`Dog` et `Cat` uterque `speak` superscribit. Methodus `intro` ex `Animal` sine mutationibus venit. Vocat `self.speak`, et haec vocatio eam `speak` adhibet quae ad ipsum obiectum pertinet:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Itaque eadem `intro` hereditata diversos effectus dat, quia quodque obiectum propriam `speak` habet. Haec est una ex ideis principalibus programmationis ad obiecta directae. Codex communis agendi rationem suam ad quodque genus obiecti accommodat.

{% include nav.html %}
