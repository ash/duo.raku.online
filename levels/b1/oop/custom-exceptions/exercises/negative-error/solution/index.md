---
title: The solution of ’A negative error‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 You can find the source code in the file [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Output

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Comments

1. `Negative is Exception` makes it possible to throw the class. Its `message` method builds the text from the `n` attribute.

1. `check` tests its input and throws the custom exception for a negative number. The exception travels out of `check` to the `CATCH` in the calling block. There, `when Negative` matches it by its type and prints the message. This is a very common, real use of custom exceptions. Code checks its input and reports bad values with an exception of its own type.

1. Why is there a `{ … }` around the call? A `CATCH` phaser handles only the exceptions thrown in **the block that contains it**. The block puts the risky `check(-5)` together with the `CATCH` that guards it. So the exception is caught right here, and the program continues just after the block. Without the block, the `CATCH` would guard the whole program instead. It would catch the exception, but then the program would simply end. There would be no natural place to carry on.

1. The final `Negative.new(n => -10).throw` shows the other side of this. It is **outside** the block, so nothing catches it. The exception goes all the way up to the top, and the program dies. It prints the message and a backtrace to standard error. Then it exits with a non-zero status. This is what happens to any exception that you do not catch. And that is exactly why the first throw needed a `CATCH` to survive.

{% include nav.html %}
