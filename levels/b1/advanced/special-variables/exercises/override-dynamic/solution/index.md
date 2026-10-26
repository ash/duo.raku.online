---
title: The solution of ’Override the dynamic‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 You can find the source code in the file [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Output

```
INFO: working
DEBUG: working
```

## Comments

1. `task` calls `log-it` but never mentions `$*prefix`. Still, the value reaches `log-it`. Dynamic lookup goes outward through the call stack, past `task`. It reaches whoever is on the stack at that time.

1. The two blocks set different values. So the *same* `task()` call gives a different prefix each time. This is what makes dynamic variables useful. The context reaches deeply nested code. You do not have to pass it as an argument through every routine in between.

{% include nav.html %}
