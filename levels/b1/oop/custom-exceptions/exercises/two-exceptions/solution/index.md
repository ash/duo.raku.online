---
title: The solution of ’Two exception types‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The loop throws a `TooSmall` in the first round and a `TooBig` in the second. Each one is thrown inside its own block, which has its own `CATCH`.

1. The `CATCH` phaser has a `when` branch for each exception type. In each round, only the branch that matches the thrown type runs. So the first round prints `small`, and the second prints `big`. This is how one set of handlers reacts differently to each kind of error.

{% include nav.html %}
