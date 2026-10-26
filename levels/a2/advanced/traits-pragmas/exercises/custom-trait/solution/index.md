---
title: The solution of ’A custom trait‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 You can find the source code in the file [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Output

```
admin
```

## Comments

1. The trait is a `multi sub trait_mod:<is>`. It has a named parameter, `:$role!`. Because of this parameter, the sub runs for `is role(...)`. Some traits are only there or not there. This trait is different. It *gets* the argument: `is role('admin')` gives `'admin'` to `$role`.

1. The body saves this value under the name of the subroutine. Later, `%role<login>` gives `admin`. Traits run at compile time. So the value is already in the hash when the program runs.

{% include nav.html %}
