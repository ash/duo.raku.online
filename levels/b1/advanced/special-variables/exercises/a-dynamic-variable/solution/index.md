---
title: The solution of ’A dynamic variable‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `*` twigil makes `$*user` dynamic. `whoami` never gets it as a parameter. Instead, it finds the value by looking outward through the call stack. So the first call shows the default, `guest`.

1. The inner block declares `$*user` again as `admin`, and this lasts while the block runs. The *same* `whoami` now sees `admin`. This is because dynamic lookup follows whoever is on the stack at the moment. Overriding a dynamic variable in a scope gives more rights to everything called from it. And you do not need to change `whoami` at all.

{% include nav.html %}
