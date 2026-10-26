---
title: Numeric, string, and Boolean context
---

{% include menu.html %}

Three contexts are very common. In the first one, a value acts as a number. In the second, it acts as a string. In the third, it acts as `True` or `False`. Each of these contexts has a prefix operator. The operator goes before the value. It sets the context directly:

* `+` — numeric context: the value acts as a number
* `~` — string context: the value acts as a string
* `?` — Boolean context: the value acts as `True` or `False`

Use them with an array. `+` gives the length of the array. `~` gives its elements, with spaces between them. `?` tells you if the array has any elements:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

An empty array is `0` in numeric context. In Boolean context, it is `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

You do not always have to write these operators. Often, Raku sets the right context for you. Arithmetic puts values in numeric context. Joining strings puts them in string context. And `if`, `while`, `and` and `or` put their condition in Boolean context:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

So `if @array { … }` works as you expect. An array with elements is true. With the prefix operators, you ask for the same conversions yourself.

You can also put `if` after the statement. Then the code is short and clear:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
