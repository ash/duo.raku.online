---
title: The solution of ’A maths module‘
---

{% include menu.html %}

Here is one possible solution. It uses two files.

## Code

The module, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

The program, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module) directory.

## Output

```console
$ raku -I. maths.raku
36
```

## Comments

1. The module marks `square` with `is export`. That is what makes it available to the program that uses the module.

1. The `-I.` option adds the current directory to the module search path. This way, Raku finds `Maths.rakumod` next to the program.

{% include nav.html %}
