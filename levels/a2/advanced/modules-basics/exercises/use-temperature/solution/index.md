---
title: The solution of ’Use the converter‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

The program, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature) directory.

## Output

```console
$ raku -I. temperature.raku 100
212
```

## Comments

1. `use Temperature` loads the module. It also imports the exported subroutine `c-to-f`. So the program can call it directly.

1. `sub MAIN($celsius)` gets the command-line argument. So you choose the temperature when you run the program. It is not fixed in the code. Without an argument, Raku automatically prints a usage message. This message shows how to run the program.

1. Raku must be able to find the module. So you run the program with `-I.`. Then Raku looks for `Temperature.rakumod` in the current directory. The program changes `100` °C to `212` °F.

{% include nav.html %}
