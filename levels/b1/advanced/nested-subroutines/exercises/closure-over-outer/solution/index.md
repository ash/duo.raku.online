---
title: The solution of ’Closing over the outer‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 You can find the source code in the file [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Output

```
Hello, Anna!
```

## Comments

1. `message` takes no arguments, but it can still use `$name`. A nested subroutine captures the lexical variables of the subroutine that contains it. So the outer `$name` is in scope.

1. When `greet('Anna')` runs, `$name` is `'Anna'`. So `message` returns `Hello, Anna!`. Nested helpers share the scope around them. This makes them more than just hidden functions.

{% include nav.html %}
