---
title: The solution of ’A dynamic variable‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 You can find the source code in the file [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Output

```
running as guest
running as admin
```

## Comments

1. The twigil `*` makes `$*user` dynamic. `whoami` never gets it as a parameter. It finds the value through the call stack. So the first call shows the default value, `guest`.

1. The inner block declares `$*user` again as `admin`. This lasts while the block runs. The *same* `whoami` now sees `admin`. Dynamic lookup checks who is on the call stack now. You override a dynamic variable in a scope. Then all code that you call from there gets more rights. And you do not change `whoami` at all.

{% include nav.html %}
