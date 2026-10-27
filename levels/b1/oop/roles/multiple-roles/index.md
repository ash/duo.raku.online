---
title: Composing several roles
---

{% include menu.html %}

A class can do more than one role. You just list each role with its own `does`:

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

The `Duck` class now has two methods, `move` from `Walk` and `dive` from `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Putting roles together like this is called _composition_. It lets you build a class from several separate pieces of behaviour. This is often more flexible than one chain of inheritance. A class can mix in exactly the abilities that it needs, and nothing more.

{% include nav.html %}
