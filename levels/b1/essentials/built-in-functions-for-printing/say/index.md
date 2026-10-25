---
title: The say routine
---

{% include menu.html %}

Here is what the built-in routine `say` does:

1. Calls the `gist` method on its arguments.
1. Adds a newline character.
1. Converts the result to UTF-8.
1. Sends it to the `STDOUT` stream.

For the user, it looks simple. `say` just prints the contents of a variable to the terminal and adds a newline.

The first step needs some explanation. Every built-in data type, such as integers or strings, has a `gist` method. For such simple types, it returns a value that represents the item. People can easily read this value.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Arrays and hashes are examples of more complex data. For them, the `gist` method adds some formatting.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

You can call `say` both as a function and as a method:

```raku
say 42;
say(42);
42.say;
```

You can pass several arguments to `say`. It joins the parts of the output without any spaces between them.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
