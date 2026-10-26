---
title: 'Quiz — Type constraints'
---

{% include menu.html %}

Here is the declaration of a container:

```raku
my Int $int;
```

Which assignment below gives an error at compile time?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
