---
title: 'Quiz — Class methods'
---

{% include menu.html %}

What does this program print? The method `n` does not use any attributes.

```raku
class T {
    method n { 42 }
}

say T.n + T.new.n;
```

{:.quiz}
0 | 42
1 | 84
0 | (T)
0 | an error

{% include quiz.html %}

{% include nav.html %}
