---
title: The solution of ’An our variable‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `our $port` becomes part of the `Config` namespace. So you can reach it from outside as `$Config::port`, which prints `8080`.

1. `my $secret` is lexical, which means it is private to the package block. So it is not in the namespace. The path `$Config::secret` finds nothing, only an undefined value, so `.defined` is `False`. This is the difference that `our` makes.

{% include nav.html %}
