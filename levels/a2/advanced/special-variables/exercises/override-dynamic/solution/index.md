---
title: The solution of ’Override the dynamic‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `task` calls `log-it`. But it never uses `$*prefix`. Still, the value gets to `log-it`. Dynamic lookup goes back through the call stack. It goes past `task`. It reaches the code on the stack at that moment.

1. The two blocks set different values. So the *same* call `task()` gives a different prefix each time. This is why dynamic variables are useful. Information reaches code far down the chain of calls. No routine in the middle has to pass it on as an argument.

{% include nav.html %}
