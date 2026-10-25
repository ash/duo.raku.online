---
title: Solution to ‘Class desks’
---

{% include menu.html %}

Here is the solution.

## Code

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 You can find the full code in the file [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Output

Run the program two or more times. Try an odd number of students and an even number. For example, try `23` and `24`. For both numbers, the program prints the same result:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Comments

You cannot just divide the number of students by two. The program must work with both odd and even numbers. Here is one way to round the number up: `$students div 2 + $students % 2`. The expression has two parts. If the number of students is even, the second part is zero. Then the result is half of the number of students. But if it is odd, the first part is still an integer. This is because we use `div`, not `/`. And the second part adds one more desk.

{% include nav.html %}
