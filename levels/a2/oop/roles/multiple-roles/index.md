---
title: Composing several roles
---

{% include menu.html %}

A class can do more than one role. Just write `does` before each role:

```raku
role Walk {
    method move { 'walking' }
}

role Swim {
    method dive { 'diving' }
}

class Duck does Walk does Swim {
}
```

Now the class `Duck` has two methods. It has `move` from `Walk`. It has `dive` from `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

This way of putting roles together is called _composition_. You build a class from several separate pieces of behaviour. This often gives you more choice than one chain of inheritance. A class takes exactly the abilities that it needs. It takes nothing more.

{% include nav.html %}
