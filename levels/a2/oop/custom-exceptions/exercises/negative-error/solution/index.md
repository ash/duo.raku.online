---
title: The solution of ’A negative error‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `Negative is Exception` lets you throw this class. Its method `message` builds the text from the attribute `n`.

1. `check` tests its input. For a negative number, it throws the custom exception. The exception goes out of `check`. It goes to the `CATCH` in the block that called `check`. There, `when Negative` matches it by its type. Then the `CATCH` prints the message. This is a very common, real use of custom exceptions. A program checks its input. For a bad value, it throws an exception of its own type.

1. Why is there a `{ … }` around the call? A `CATCH` phaser handles only the exceptions from **its own block**. This is the block that has the `CATCH` inside. Here, the block holds the call `check(-5)` together with its `CATCH`. The call may fail, and the `CATCH` is there for it. So the exception is caught right here. Then the program goes on just after the block. What if there is no block? Then the `CATCH` works for the whole program. It catches the exception. But then the program simply ends. There is no good place to go on.

1. The last line, `Negative.new(n => -10).throw`, shows the opposite case. This line is **outside** the block. So nothing catches the exception. The exception goes all the way up to the top. Then the program dies, or stops with an error. It prints the message to standard error. It also prints a backtrace there. A backtrace shows where in the code the error happened. Then the program ends with an exit code other than `0`. This happens to every exception that you do not catch. And this is why the first throw needed a `CATCH`. Without it, the program cannot go on.

{% include nav.html %}
