---
title: 'Solution: Perimeter of a rectangle'
---

{% include menu.html %}

This program must work with one or two command-line arguments. The solution shows a new trick. The second variable has a default value. It is the value of the first variable: `sub MAIN($a, $b = $a)`. So we do not create two multi-functions. Instead, we have one general function. For a square, this function sets the size of the second side.

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

Try different input values. Test both squares and rectangles.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
The perimeter of a square is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
The perimeter of a rectangle is 6.
```

There is also a third case. You should test it too. Pass two equal numbers. The program must still see that this is a square:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
The perimeter of a square is 8.
```

{% include nav.html %}
