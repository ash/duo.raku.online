---
title: Solution of ‘True and False strings’
---

{% include menu.html %}

This exercise is like [the previous one](../../true-false-numbers). But this time, the task is a bit harder. Here, more strings can look like `False`. Let's look at them.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Of all these strings, only the empty string becomes `False`. All the other strings become `True`. Even a string with only spaces becomes `True`. A string with the character `0` is also `True`.

🦋 You can find the full program with the above example in the file [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
