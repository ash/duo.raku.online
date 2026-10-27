---
title: The solution of ’Too big‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `TooBig is Exception` makes the class an exception. You can throw it. It holds two pieces of data, `value` and `limit`. Its method `message` puts both of them into the text.

1. `.throw` throws the exception. `when TooBig` matches it by its type. The code in `when TooBig` is the handler. It does more than print the message. It also reads the attribute `limit` from the caught object. With it, the handler gives a useful hint. This is why a custom exception is better than a simple string. The handler gets data in a clear form. It can act on this data.

1. The exception is thrown **only** when `$value > $limit`. For `30`, there is no exception. The body of the loop runs to the end. Its `say` prints that the value is inside the limit. For `99` and `60`, the `throw` happens. So the program skips that `say`. The `CATCH` handles the exception instead. Here, the `CATCH` is right in the body of the `for` loop. So a caught exception ends only the current round. Then the loop simply goes on to the next value.

{% include nav.html %}
