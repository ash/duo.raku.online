---
title: Solution to ‘Sum of numbers from 1 to 100’
---

{% include menu.html %}

How do you find the sum of the integers from 1 to 100? Of course, you can add all the numbers in one long expression. Or you can write a loop. Loops come later in the course. But the best way is a well-known [formula](https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯):

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

With the formula, the solution is very simple.

## Code

```raku
my $N = 100;
my $sum = $N * (1 + $N) / 2;
say "The sum of the numbers from 1 to $N is $sum.";
```

🦋 You can find the full code in the file [sum1-100.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum1-100.raku).

## Output

```console
$ raku exercises/numbers/sum1-100.raku 
The sum of the numbers from 1 to 100 is 5050.
```

{% include nav.html %}
