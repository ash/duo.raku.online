---
title: The solution of ’Squares‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The check `if $_ %% 2` decides *if* the code takes a value. `$_ ** 2` decides *what* it takes. Only the even numbers `2`, `4`, `6` pass the check.

1. Their squares are `4`, `16`, `36`. Only these values go to `take`. So `gather` collects exactly these values. Here, one `take` both chooses and changes the values. A simple `map` cannot say this so clearly.

{% include nav.html %}
