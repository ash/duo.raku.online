---
title: Solution of ‘True and False strings’
---

{% include menu.html %}

This exercise is similar to [the previous one](../../true-false-numbers). But this time, the task is a bit harder. There are more ‘suspect’ strings, which could be treated as `False`. Let us explore them.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Of all these strings, only the empty string is converted to `False`. All other strings become `True`, even if they contain only spaces or the character `0`.

🦋 You can find the full program with the above example in the file [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
