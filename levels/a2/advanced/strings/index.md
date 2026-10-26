---
title: Strings
---

{% include menu.html %}

In the Essentials part, you learned [how to build strings](/essentials/strings). You learned to join strings and to interpolate. You also learned to find the length of a string. Strings also have many methods. This section shows the most useful ones. Searching with [regular expressions](/regexes) is a separate, bigger topic. It has its own part later in the course.

Three methods change the case of a string. The case means capital or small letters:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

The `flip` method writes the characters of a string backwards:

```raku
say 'Raku'.flip; # ukaR
```

And the `x` operator repeats a string several times. You give the number of times:

```raku
say 'ab' x 3; # ababab
```

The next topics show how to search in strings. They also show how to split strings into parts. And they show how to join the parts again.

{% include nav.html %}
