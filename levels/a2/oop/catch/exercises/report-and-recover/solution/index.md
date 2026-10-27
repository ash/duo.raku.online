---
title: The solution of ’Report and recover‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The `die` throws an exception. Then Raku skips the rest of the block. So the line `$timeout = 60` never runs. `$timeout` keeps its default value, `30`.

1. The `CATCH` handles the exception. It prints a warning. So the program does not stop. It goes on with the default value. This is what *recovering* from an error means. You note the problem. You use something safe instead. Then you go on.

{% include nav.html %}
