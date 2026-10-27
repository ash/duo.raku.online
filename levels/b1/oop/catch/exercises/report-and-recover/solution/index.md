---
title: The solution of ’Report and recover‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 You can find the source code in the file [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Output

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Comments

1. When the `die` throws, the rest of the block is skipped. So the line `$timeout = 60` never runs, and `$timeout` keeps its default of `30`.

1. The `CATCH` handles the exception and prints a warning. So the program does not stop, and it continues with the default value. This is exactly what *recovering* from an error means. You note the problem, fall back to something safe, and continue.

{% include nav.html %}
