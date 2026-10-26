---
title: 'Quiz — Classes'
---

{% include menu.html %}

What does this program print? Remember that `WHAT` shows the *type*. But `defined` shows something else. Is the value a type object or an instance?

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | an error

{% include quiz.html %}

{% include nav.html %}
