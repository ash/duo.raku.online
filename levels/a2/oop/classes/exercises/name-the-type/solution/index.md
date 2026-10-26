---
title: The solution of ’Name the type‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Cat {
}

class Dog {
}

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 You can find the source code in the file [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Output

```
(Cat)
True
False
```

## Comments

1. `WHAT` returns the type object. Raku shows it in round brackets: `(Cat)`. So `$felix` is a `Cat`.

1. `===` checks if two type objects are the same. `$felix.WHAT === Cat.WHAT` is `True`. Felix really is a `Cat`. But `$felix.WHAT === Dog.WHAT` is `False`. A `Cat` and a `Dog` are different types. So their type objects are not the same.

{% include nav.html %}
