---
title: Solution to ‘Sum of numbers’
---

{% include menu.html %}

Here is the solution to the problem.

## Code

```raku
my $a = prompt 'Enter number A: ';
my $b = prompt 'Enter number B: ';
my $c = prompt 'Enter number C: ';

my $sum = $a + $b + $c;

say "The sum of numbers is $sum.";
```

🦋 You can find the full code in the file [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Output

Run the program a few times. Make sure that it works with different kinds of numbers.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Enter number A: 1.2
Enter number B: -3.4
Enter number C: 45
The sum of the numbers is 42.8.
```

## Comments

Note that we use the value returned by the `prompt` routine directly. This may cause problems if the user enters a string that is not a number. We can improve the program later, after we learn about exceptions.

{% include nav.html %}
