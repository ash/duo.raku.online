---
title: Boolean operations with other types
---

{% include menu.html %}

The next section is about [changing data from one type to another](/essentials/coercion). But first, look at an important feature of Raku. You can use Boolean operations with strings or integers. Then Raku does not change the values into Boolean values. The result is not a Boolean value either. Look at these examples:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Here are the rules 📖 [from the documentation](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` returns the first value that Raku sees as False. If there is no such value, it returns the last value.
* `||` returns the first value that Raku sees as True. If there is no such value, it returns the last value.
* `^^` returns the True value if there is only one True value. If all values are False, it returns the last value. If more than one value is True, it returns `Nil`.

Here we see a new value, `Nil`. It is a ‘null’ value.

{% include nav.html %}
