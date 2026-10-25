---
title: Boolean operations with other types
---

{% include menu.html %}

In the next section, we will talk about [converting data from one type to another](/essentials/coercion). But before that, it is important to point out one feature of Raku. You can use Boolean operations with strings or integers. In this case, the values are not converted to Booleans. The result is not a Boolean value either. Look at these examples:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Let us read the rules 📖 [from the documentation](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` returns the first argument that is False as a Boolean. If there is none, it returns the last argument.
* `||` returns the first argument that is True as a Boolean. If there is none, it returns the last argument.
* `^^` returns the True argument if there is exactly one. If all arguments are False, it returns the last one. If more than one argument is True, it returns `Nil`.

Note that we have just met `Nil`, which is a ‘null’ value.

{% include nav.html %}
