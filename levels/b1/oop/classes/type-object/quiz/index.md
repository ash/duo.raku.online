---
title: 'Quiz — Classes'
---

{% include menu.html %}

What does the following program print? Remember that `WHAT` reports the *type*. To see if a value is a type object or an instance, you need `defined`.

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
