---
title: The solution of ’A reversed word‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 You can find the source code in the file [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Output

```
ukaR
```

## Comments

1. The `reversed` method gets the object’s own `text` through its accessor, `$.text`. Then it calls the built-in `flip` on it, which reverses the string.

1. The method is called directly on the new `Word` object. Nothing is saved back to the object. `reversed` just calculates a new value from the attribute and returns it.

1. Note that inside the class, you do not need the accessor. You can read the variable directly:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
