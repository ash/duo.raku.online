---
title: The solution of ’Load at run time‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `require` loads the module at run time instead of compile time. On its own, it imports nothing. That is why Raku would not know a plain `hello`.

1. The `<&hello>` list tells `require` to import that one symbol. So after this statement, you can call `hello('Sam')` directly, and it gives `Hello, Sam!`.

1. This is what `require` is *for*. Because it works at run time, it can be inside an `if`. When you give `--quiet`, that branch is skipped and the module is never loaded. A `use` at compile time could not avoid loading it.

{% include nav.html %}
