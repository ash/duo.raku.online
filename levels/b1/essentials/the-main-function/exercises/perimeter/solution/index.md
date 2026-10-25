---
title: 'Solution: Perimeter of a rectangle'
---

{% include menu.html %}

This program must be able to take one or two command-line arguments. The solution shows a new trick. The default value of the second variable is the value of the first one: `sub MAIN($a, $b = $a)`. So, instead of two multi-functions, we have one general function. If the shape is a square, this function sets the size of the second side.

## Code

Here is the solution:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'square' !! 'rectangle';
    say "The perimeter of a $shape is $perimeter.";
}
```

🦋 Find the program in the file [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Output

Try different input values to test both squares and rectangles.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
The perimeter of a square is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
The perimeter of a rectangle is 6.
```

Note that there is a third case, which you should also test. With two equal numbers, the program should still understand that it is a square:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
The perimeter of a square is 8.
```

{% include nav.html %}
