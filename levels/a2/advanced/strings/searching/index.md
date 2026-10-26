---
title: Searching in strings
---

{% include menu.html %}

Some methods tell you what is inside a string.

The `contains` method checks if one string is inside another string. It can be at any place:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

The `starts-with` method checks the start of a string. The `ends-with` method checks the end:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Do you need the exact position of a part of a string? Then use `index`. It returns the position of the first match. It counts from zero:

```raku
say 'Raku'.index('k'); # 2
```

Sometimes `index` cannot find the part. Then it returns `Nil`, not a number:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
