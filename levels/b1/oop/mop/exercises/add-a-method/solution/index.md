---
title: The solution of ’Add a method‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 You can find the source code in the file [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Output

```
Rex says woof
```

## Comments

1. `.^add_method` adds a new method to the metaobject of the class at run time. You give the method as an anonymous `method { … }`.

1. The added method is a real method of the class. So inside it, `$.name` reaches the object’s `name` attribute. A method written in the class body would do the same. After the call, every `Dog` responds to `.speak`.

{% include nav.html %}
