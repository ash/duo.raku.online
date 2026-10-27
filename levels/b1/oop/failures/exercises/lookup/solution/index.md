---
title: The solution of ’Lookup or not found‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `lookup('z')` calls `fail`, so it returns an undefined `Failure`.

1. The result is undefined, so the program prints `not found`. It does not try to use the failed value.

1. A `Failure` still carries the exception that describes what went wrong. You get it with `$r.exception`. This also marks the failure as handled, so it will not throw later. Then `.message` reads the text that was passed to `fail`, `no such key`.

{% include nav.html %}
