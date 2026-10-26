---
title: Scalar containers
---

{% include menu.html %}

Scalar containers keep single, or scalar, values. The name tells you this. Such containers have the `$` sigil.

Here is a very simple use of a scalar:

```raku
my $lang = 'Raku';
```

The `$lang` variable is a scalar container.

By default, a scalar container does not limit the data type. So you can keep a value of any type in it. Here is the simplest example. First, a variable keeps an integer. Then the same variable keeps a string:

```raku
my $value = 42;
$value = 'forty-two';
```

The author does not recommend writing code like this.

Inside Raku, this means one thing. By default, a new container can keep values of the `Any` type. `Any` is the base type for most other types. For example, `Int` and `Str` come from `Any`.

{% include nav.html %}
