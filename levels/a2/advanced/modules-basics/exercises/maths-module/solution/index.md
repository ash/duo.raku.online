---
title: The solution of ’A maths module‘
---

{% include menu.html %}

Here is one way to solve the task. It uses two files.

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

1. The module marks `square` with `is export`. So a program that uses the module can call `square`.

1. The option `-I.` puts the current directory on the module search path. So Raku finds `Maths.rakumod` next to the program.

{% include nav.html %}
