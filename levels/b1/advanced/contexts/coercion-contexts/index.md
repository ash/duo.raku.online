---
title: Numeric, string, and Boolean context
---

{% include menu.html %}

Three contexts are very common. They make a value behave as a number, a string, or a Boolean value. For each of them, there is a prefix operator that sets the context directly:

* `+` — numeric context
* `~` — string context
* `?` — Boolean context

With an array, `+` gives its length, and `~` gives its elements joined by spaces. `?` shows whether the array has any elements at all:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

An empty array gives `0` in numeric context and `False` in Boolean context:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

You do not always need to write these operators yourself. Raku can set the right context for you. Arithmetic puts its values in numeric context, and joining strings puts them in string context. `if`, `while`, and `and`/`or` put their condition in Boolean context:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

So `if @array { … }` works just as you would expect. An array that is not empty is true. The prefix operators are a way to ask for the same conversions directly.

Together with a postfix `if`, this lets you write short and clear code:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
