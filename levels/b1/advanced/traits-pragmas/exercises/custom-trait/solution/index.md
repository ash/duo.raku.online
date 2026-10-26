---
title: The solution of ’A custom trait‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The trait is a `multi sub trait_mod:<is>` with the named parameter `:$role!`. This parameter makes it run for `is role(...)`. Some traits are only present or absent, but this one *receives* the argument. Here, `is role('admin')` binds `'admin'` to `$role`.

1. The body stores this value under the name of the subroutine. When you later read `%role<login>`, you get `admin`. Traits run at compile time, so the entry is already there when the program runs.

{% include nav.html %}
