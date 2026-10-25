---
title: Mind the space
---

{% include menu.html %}

In Raku, using functions is mostly easy and causes no problems. But we must warn you about one thing.

## TL;DR

Put no space between the function name and the parentheses with its arguments. But do use a space after `for` and `if`.

## Long story

Let us take a simple function:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

First, note that there is no space after the name of the function. The opening parenthesis with the parameters comes right after the name. Some code styles in other languages may require a space there. Raku accepts it, but this is not a good practice to follow:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

When you call the function, the missing space is important. If you call the function without parentheses, you must have a space after its name:

```raku
f 5, 6;
```

But if you use parentheses, there cannot be a space before them. This call is correct:

```raku
f(5, 6);
```

And this call is wrong:

```raku
f (5, 6);
```

Such code causes an exception:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Raku sees the call with a space, `f (5, 6)`, in a different way. It thinks that you want to pass a single argument, `(5, 6)`, to the function. It is easy to check the type of this argument. Just change the function to take only one argument:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

So, when you call `f (5, 6)`, you pass a [list](/essentials/positionals/lists) to the function. The list is passed as a single item.

## When space is needed

In some cases, you do need a space. This happens when you use parentheses with a keyword such as `if`, `for` or `loop`. The following code is wrong:

```raku
if(True != False) {
    say 'OK';
}
```

The error message explains the problem:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

With `if`, you do not need parentheses at all. So if you do not use them, the problem cannot appear. But in some cases you need them, for example, with `loop`. Then the space is required:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

The same thing happens in this code: the compiler takes `loop(...)` as a function call. Add a space to fix the problem. Or, even better, rewrite this part of the code with `for`.

## Conclusion

In short, to avoid such problems, follow two rules. Do not put a space between the function name and the parentheses with its arguments. Also, try to avoid parentheses in other parts of the language, such as control flow.

{% include nav.html %}
