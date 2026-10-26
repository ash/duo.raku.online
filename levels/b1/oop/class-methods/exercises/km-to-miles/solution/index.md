---
title: The solution of ’Kilometres to miles‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 You can find the source code in the file [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Output

```
6.21
```

## Comments

1. The conversion does not depend on any particular object. So it is a class method, and the program calls it directly on `Converter`.

1. A class method can still take parameters. Here, it gets the number of kilometres and returns the miles.

{% include nav.html %}
