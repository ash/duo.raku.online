---
title: The solution of ’Too big‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 You can find the source code in the file [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Output

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Comments

1. `TooBig is Exception` makes the class an exception that you can throw. It carries two pieces of data, `value` and `limit`. Its `message` method puts both of them into the text that it reports.

1. `.throw` raises the exception, and `when TooBig` matches it by its type. The handler does more than print the message. It reads the `limit` attribute directly from the caught object to give a helpful hint. This is why a custom exception is better than a plain string. The handler gets data with a clear structure that it can act on.

1. The exception is thrown **only** when `$value > $limit`. For `30`, there is no exception, and the loop body runs to its `say`. It prints that the value is within the limit. For `99` and `60`, the `throw` happens, so that `say` is skipped. The `CATCH` handles the exception instead. The `for` body is itself the block that the `CATCH` guards. So a caught exception ends only the current round. Then the loop simply moves on to the next value.

{% include nav.html %}
