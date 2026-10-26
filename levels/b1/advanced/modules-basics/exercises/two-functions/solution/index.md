---
title: The solution of ’Two functions in one module‘
---

{% include menu.html %}

Here is one possible solution. It uses two files.

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

1. A module can export as many subroutines as you like. Each one has its own `is export` trait.

1. After just one `use Calc`, both `add` and `mul` are available in the program.

{% include nav.html %}
