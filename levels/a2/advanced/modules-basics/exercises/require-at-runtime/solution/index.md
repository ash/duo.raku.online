---
title: The solution of ’Load at run time‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

The program, `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime) directory.

## Output

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Comments

1. `require` loads the module at run time, not at compile time. On its own, it imports nothing. So Raku does not know the name `hello`.

1. The list `<&hello>` tells `require` to import this one name. After this statement, you can call `hello('Sam')` directly. It gives `Hello, Sam!`.

1. This is *why* we have `require`. It works at run time. So it can be inside an `if`. With `--quiet`, the program skips this branch. So it never loads the module. A `use` always loads the module. It works at compile time.

{% include nav.html %}
