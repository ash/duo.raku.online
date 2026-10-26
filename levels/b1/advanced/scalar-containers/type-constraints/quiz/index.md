---
title: 'Quiz — Type constraints'
---

{% include menu.html %}

A container is declared like this:

```raku
my Int $int;
```

Which of the assignments below gives a compile-time error?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
