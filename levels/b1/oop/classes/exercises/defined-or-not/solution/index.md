---
title: The solution of ’Defined or not‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 You can find the source code in the file [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Output

```
False
False
True
True
```

## Comments

1. The loop goes through a mix of values. Two are type objects, `Cat` and `Dog`, and two are instances, `Cat.new` and `Dog.new`.

1. Both type objects are undefined, so `defined` returns `False` for them. Both instances are defined, so it returns `True`. So it matters whether a value is a type object or a real instance. The class of the value does not matter.

{% include nav.html %}
