---
title: Mind the space
---

{% include menu.html %}

Functions in Raku are mostly easy to use. Usually, they cause no problems. But be careful with one thing.

## TL;DR

Write no space between the function name and the parentheses. The parentheses hold the arguments. But do put a space after `for` and `if`.

## Long story

Here is a simple function:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

First, look at the name of the function. The opening parenthesis comes right after it, with no space. The parameters are in these parentheses. Some code styles in other languages need a space there. Raku accepts it too. But this is not a good way to write code:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

In a function call, the missing space is important. Sometimes you call a function without parentheses. Then you must put a space after the name of the function:

```raku
f 5, 6;
```

But with parentheses, there must be no space before them. This call is correct:

```raku
f(5, 6);
```

And this call is wrong:

```raku
f (5, 6);
```

This code causes an exception:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Look at the call with a space: `f (5, 6)`. Raku thinks that you pass one argument to the function. This argument is `(5, 6)`. You can easily check the type of this argument. Change the function. It must take only one argument:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

So, the call `f (5, 6)` passes a [list](/essentials/positionals/lists) to the function. The whole list is one argument.

## When you need a space

Sometimes you need a space. This happens when you use parentheses after a keyword. For example, the keyword can be `if`, `for` or `loop`. This code is wrong:

```raku
if(True != False) {
    say 'OK';
}
```

The error message tells you what is wrong:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

With `if`, you do not need parentheses at all. Without them, this problem cannot happen. But sometimes you need parentheses, for example, with `loop`. Then you must put a space:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

The same thing happens in this code. The compiler thinks that `loop(...)` is a function call. Add a space to fix the problem. Or, better, write this code with `for`.

## Conclusion

So, here is the main point. Do not put a space between a function name and its parentheses. Then you avoid such problems. Also, try not to use parentheses in other places when you can. For example, you do not need them with `if` and `for`.

{% include nav.html %}
