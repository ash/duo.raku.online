---
title: 'Quiz — Quoting'
---

{% include menu.html %}

What does this program print?

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

The `q` operator works like single quotes. It does not process backslash escapes like `\n`. So the string keeps all four characters: `a`, `\`, `n`, `b`. Only a form that interpolates turns `\n` into a real newline. Examples are `qq` and double quotes.

</div>

{% include nav.html %}
