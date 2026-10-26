---
title: The solution of ’Squares‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 You can find the source code in the file [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Output

```
[4 16 36]
```

## Comments

1. The check `if $_ %% 2` decides *whether* to take a value, and `$_ ** 2` decides *what* to take. Only the even numbers `2`, `4`, `6` pass this check.

1. Their squares `4`, `16`, `36` are the only values given to `take`. So `gather` collects exactly those. Here, one `take` filters and changes the values together. A simple `map` cannot say this as clearly.

{% include nav.html %}
