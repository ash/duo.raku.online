---
title: The solution of ’Defined or not‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The loop goes over two type objects, `Cat` and `Dog`. It also goes over two instances, `Cat.new` and `Dog.new`.

1. The two type objects are undefined. So `defined` returns `False` for them. The two instances are defined. So `defined` returns `True` for them. Only one thing matters here. Is the value a type object or a real instance? The class of the value does not matter.

{% include nav.html %}
