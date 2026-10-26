---
title: Values and keys
---

{% include menu.html %}

Each constant of an enum has a name and a number. The `.value` method gives the number. The `.key` method gives the name as a string:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku numbers the constants from zero. But you can change this. Write the constants as pairs. Then you choose the values yourself:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Here, the working week starts from one, not from zero.

The enum type can also list all its constants. The `.enums` method returns a map. A map is like a hash. In this map, each name has its value:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

With `.value`, `.key`, and `.enums`, you can move around freely. You can go from a constant to its number. You can go from a number back to the data. And you can go over the whole set. So enums are useful, for example, for menus, states, and lookup tables.

{% include nav.html %}
