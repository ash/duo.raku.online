---
title: Solution of ‘Square and cubes’
---

{% include menu.html %}

## Code 1

A simple solution uses the `**` operator.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Find the program in the file [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Code 2

Another solution looks a bit nicer. It uses Unicode superscripts. These are small digits at the top of the line.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Find the program in the file [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Output

Run the program a few times. Test it with different numbers.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
