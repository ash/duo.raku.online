---
title: Values and keys
---

{% include menu.html %}

Every enum constant has both a name and a number. The `.value` method returns the number, and `.key` returns the name as a string:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

You do not have to use the automatic numbers from zero. To choose the values yourself, write the constants as pairs:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Here, the working week starts at one instead of zero.

The enum type can also list all its constants itself. Its `.enums` method returns a map that links each name to its value:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

These three methods, `.value`, `.key` and `.enums`, let you move around freely. You can go from a constant to its number and from a number back to data. You can also work with the whole set. This is what makes enums useful for things like menus, states and lookup tables.

{% include nav.html %}
