---
title: The say routine
---

{% include menu.html %}

The built-in routine `say` does four things:

1. Calls the `gist` method on its arguments.
1. Adds a newline character.
1. Converts the result to UTF-8.
1. Sends it to the `STDOUT` stream.

For the user, it is simple. `say` prints the value of a variable in the terminal. Then it adds a newline.

The first step needs some explanation. Every built-in data type has a `gist` method. Integers and strings are examples of such types. For these simple types, `gist` returns the item as an easy-to-read value.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Some data is more complex, for example, arrays or hashes. For such data, `gist` adds some formatting.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

You can call `say` as a function. You can also call it as a method:

```raku
say 42;
say(42);
42.say;
```

You can pass more than one argument to `say`. It joins the parts of the output. There are no spaces between them.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
