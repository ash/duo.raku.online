---
title: Strings
---

{% include menu.html %}

In the Essentials part, you learned [how to build strings](/essentials/strings). You saw concatenation, interpolation, and the length of a string. Strings also have a large set of methods. This section collects the most useful ones. Searching with [regular expressions](/regexes) is a separate, bigger topic. It is covered in its own part later.

Three methods change the case of the letters in a string:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

The `flip` method reverses the order of the characters in a string:

```raku
say 'Raku'.flip; # ukaR
```

And the `x` operator repeats a string as many times as you ask:

```raku
say 'ab' x 3; # ababab
```

The next topics show how to search inside strings. They also show how to split strings into parts and join them back together.

{% include nav.html %}
