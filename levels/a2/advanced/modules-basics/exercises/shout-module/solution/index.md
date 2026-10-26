---
title: The solution of ’A shout module‘
---

{% include menu.html %}

Here is one way to solve the task. It uses two files.

## Code

The module, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

The program, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module) directory.

## Output

```console
$ raku -I. shout.raku
HI
```

## Comments

1. The trait `is export` is on `shout`. So every program that uses the module can see it.

1. The method `.uc` returns the string in upper case, with capital letters.

{% include nav.html %}
