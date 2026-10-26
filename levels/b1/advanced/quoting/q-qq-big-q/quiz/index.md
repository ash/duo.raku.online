---
title: 'Quiz — Quoting'
---

{% include menu.html %}

What does the following program print?

```raku
say q{a\nb};
```

{:.quiz}
1 | a\nb
0 | a<newline>b
0 | ab
0 | anb

{% include quiz.html %}

<div class="extended-explanation">

The `q` operator works like single quotes. It does not process backslash escapes such as `\n`. The string keeps all four characters: `a`, `\`, `n` and `b`. Only an interpolating form, like `qq` or double quotes, turns `\n` into a real newline.

</div>

{% include nav.html %}
