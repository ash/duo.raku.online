---
title: The solution of ’Lookup or not found‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 You can find the source code in the file [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Output

```
not found
reason: no such key
```

## Comments

1. `lookup('z')` calls `fail`. So it returns a `Failure`. A `Failure` is an undefined value with an error inside.

1. The result is undefined. So the program prints `not found`. It does not try to use the failed value.

1. A `Failure` still holds an exception inside. The exception tells what went wrong. `$r.exception` gets this exception. This also marks the failure as handled. So it does not cause an error later. Then `.message` reads the text from `fail`. This text is `no such key`.

{% include nav.html %}
