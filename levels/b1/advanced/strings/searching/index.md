---
title: Searching in strings
---

{% include menu.html %}

Several methods tell you what a string contains.

The `contains` method checks whether one string is anywhere inside another:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

The `starts-with` and `ends-with` methods check how a string begins and ends:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

To find the exact position of a substring, use `index`. It returns the position of the first match, counting from zero:

```raku
say 'Raku'.index('k'); # 2
```

If `index` does not find the substring, it returns `Nil` instead of a number:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
