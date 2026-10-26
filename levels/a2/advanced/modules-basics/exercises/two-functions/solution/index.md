---
title: The solution of ’Two functions in one module‘
---

{% include menu.html %}

Here is one way to solve the task. It uses two files.

## Code

The module, `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

The program, `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions) directory.

## Output

```console
$ raku -I. calc.raku
7
12
```

## Comments

1. A module can export many subroutines, as many as you want. Each of them has its own trait `is export`.

1. The program needs only one `use Calc`. After it, both `add` and `mul` are available.

{% include nav.html %}
