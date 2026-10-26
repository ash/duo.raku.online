---
title: The solution of ’Closing over the outer‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `message` takes no arguments. But it can still use `$name`. A nested subroutine keeps the lexical variables of the subroutine around it. So the outer `$name` is visible inside `message`.

1. During the call `greet('Anna')`, `$name` is `'Anna'`. So `message` returns `Hello, Anna!`. The helper shares the scope of the subroutine around it. So a nested helper is more than just a hidden function.

{% include nav.html %}
