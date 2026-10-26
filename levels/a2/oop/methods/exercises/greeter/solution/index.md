---
title: The solution of ’A reversed word‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The method `reversed` gets the `text` of the object. It uses the accessor `$.text` for this. Then it calls the built-in method `flip` on it. `flip` returns the string backwards.

1. The program calls the method directly on the new `Word` object. The method does not save anything. `reversed` only makes a new value from the attribute and returns it.

1. Inside the class, you can also read the variable directly. You do not need the accessor for this:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
