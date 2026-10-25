---
title: Returning the result
---

{% include menu.html %}

Functions often do something and also return a result. For example, in functional programming, functions should not have side effects. Printing to the console is such a side effect. But Raku does not stop you from doing this. Let us see how a function returns a value. We will also see how the calling code gets it.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Here, the function `add` takes two numbers and returns their sum. It uses an explicit `return`. The calling code can use the returned value like any other value. In the program above, it is assigned to a variable.

## The last calculated value

In Raku, an explicit `return` is not always required. You can skip it when the result is the last value that the function calculates. So our `add` function can be simpler:

```raku
sub add($x, $y) {
    $x + $y
}
```

You may have noticed that the line has no semicolon at the end. It is not needed, because this line ends the code block.

Small and simple functions like this are often written on a single line. This makes the code more compact:

```raku
sub add($x, $y) { $x + $y }
```

## No return data

Sometimes you need to return from a function before the end of its body. If the function does not return any result, use `return` on its own.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is above the limit";
}
```

{% include nav.html %}
