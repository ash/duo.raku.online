---
title: Returning the result
---

{% include menu.html %}

Often a function does something and also returns a result. In functional programming, for example, functions should have no side effects. Printing to the console is one such side effect. But Raku lets you do this. Let's see how a function returns a value. We also see how the calling code gets this value.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Here, the function `add` takes two numbers. It returns their sum. The function has the word `return` in its code. The calling code can use this value like any other value. In the program above, we assign it to a variable.

## The last value

The result can be the last value in the function body. Then, in Raku, you do not have to write `return`. So we can make our function `add` simpler:

```raku
sub add($x, $y) {
    $x + $y
}
```

Note that the line has no semicolon at the end. The line is the last one in the code block. So a semicolon is not needed there.

Small and simple functions like this are often written on one line. Then the code is shorter:

```raku
sub add($x, $y) { $x + $y }
```

## No data to return

Sometimes a function must return before the end of its body. If the function returns no result, use `return` with no value.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is above the limit";
}
```

{% include nav.html %}
