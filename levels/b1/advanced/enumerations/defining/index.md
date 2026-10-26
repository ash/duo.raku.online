---
title: Defining an enum
---

{% include menu.html %}

To declare an enum, write the keyword `enum`, a name and the list of constant names:

```raku
enum Colour <red green blue>;
```

Now there is a new type, `Colour`, with three constants: `red`, `green` and `blue`. You can use each constant directly by its name:

```raku
say red;   # red
say green; # green
```

Behind each name there is a number. Raku gives these numbers automatically, starting from zero, in the order of your list. So `red` is `0`, `green` is `1` and `blue` is `2`. Because the values have an order, you can compare the constants:

```raku
say red < blue; # True
```

You can give a variable the enum as its type. Then it accepts only those constants:

```raku
my Colour $c = green;
say $c; # green
```

The name of a constant may be the same as another name in your program. Then you can always reach the constant through the enum name and `::`:

```raku
say Colour::red; # red
```

An enum gives a group of related constants a name and a type. Code that uses them is much clearer than code with plain numbers. The next topic looks at [the numbers behind the names](/advanced/enumerations/values-and-keys).

{% include nav.html %}
