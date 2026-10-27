---
title: The solution of ’Two exception types‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 You can find the source code in the file [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Output

```
small
big
```

## Comments

1. In the first round, the loop throws a `TooSmall`. In the second round, it throws a `TooBig`. Each one is thrown inside its own block. Each block has its own `CATCH`.

1. The `CATCH` phaser has a `when` branch for each exception type. In each round, only one branch runs. This is the branch for the type of the thrown exception. So the first round prints `small`, and the second prints `big`. Each `when` branch is a handler for one type. So one set of handlers can treat each kind of error differently.

{% include nav.html %}
