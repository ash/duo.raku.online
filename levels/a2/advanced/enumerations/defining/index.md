---
title: Defining an enum
---

{% include menu.html %}

To declare an enum, write the keyword `enum`. Then write a name and the list of names for the constants:

```raku
enum Colour <red green blue>;
```

This makes a new type, `Colour`. It also makes three constants: `red`, `green`, and `blue`. You can use a constant just by its name:

```raku
say red;   # red
say green; # green
```

Each name has a number behind it. Raku gives the numbers for you. It starts from zero and follows the order of your list. So `red` is `0`, `green` is `1`, and `blue` is `2`. The values have an order. So you can compare the constants:

```raku
say red < blue; # True
```

A variable can have the enum as its type. Then the variable takes only these constants:

```raku
my Colour $c = green;
say $c; # green
```

A constant and something else may have the same name. Then write the enum name and `::` before the constant. This always works:

```raku
say Colour::red; # red
```

An enum puts related constants together. It gives them a name and a type. Code with these constants is much clearer than code with just numbers. The next topic is about [the numbers behind the names](/advanced/enumerations/values-and-keys).

{% include nav.html %}
