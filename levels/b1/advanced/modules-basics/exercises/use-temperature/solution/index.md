---
title: The solution of ’Use the converter‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `use Temperature` loads the module and imports its exported `c-to-f` subroutine. So the program can call it directly.

1. `sub MAIN($celsius)` receives the command-line argument. So you choose the temperature when you run the program. It is not written into the code. If you run the program without an argument, Raku prints a usage message automatically.

1. Raku must be able to find the module. That is why you run the program with `-I.`. Then Raku looks for `Temperature.rakumod` in the current directory. Converting `100` °C gives `212` °F.

{% include nav.html %}
