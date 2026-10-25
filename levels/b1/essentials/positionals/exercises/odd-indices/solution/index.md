---
title: 'Solution: Odd indices'
---

{% include menu.html %}

You can solve this task with the `loop` construct. Then you add 2 to the loop variable on each iteration. But you can also use a `for` loop. It goes over the numbers from 1 to half the length of the array. Then you multiply each number by two.

## Code

Here is the solution:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Find the program in the file [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Output

First, run the program with the original data elements.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Then, add one more item to the data:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Check that the new element with an odd index appears in the output:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Comments

We will come back to this task in the next part of the course. Then we will solve it in a completely different way.

{% include nav.html %}
