---
title: The solution of ’An our variable‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 You can find the source code in the file [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Output

```
8080
False
```

## Comments

1. `our $port` is part of the namespace `Config`. So you can get it from outside as `$Config::port`. This prints `8080`.

1. `my $secret` is lexical. It is private to the block of the package. So it is not in the namespace. The path `$Config::secret` finds nothing. It gives an undefined value. So `.defined` is `False`. This is the difference that `our` makes.

{% include nav.html %}
