---
title: The solution of ’Add a method‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `.^add_method` adds a new method to the metaobject of the class. It does this while the program runs. You give the new method as an anonymous `method { … }`. This means that the method has no name of its own.

1. The new method is a real method of the class. So inside it, `$.name` gets the attribute `name` of the object. A method in the body of the class does the same. After the call to `.^add_method`, you can call `.speak` on every `Dog`.

{% include nav.html %}
