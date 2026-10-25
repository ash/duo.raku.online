---
title: Solution to ‘Class desks’
---

{% include menu.html %}

You can see the solution below.

## Code

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 You can find the full code in the file [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Output

Run the program at least twice. Try both an odd and an even number of students. For example, for the input numbers `23` and `24`, the program prints the same result:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Comments

Just dividing the number of students by two is not enough. The program must handle both odd and even numbers. Here is one possible way to round the number up: `$students div 2 + $students % 2`. When the number of students is even, the second part is zero. Then the result is half of the number of students. When the number is odd, the first part is still an integer. This is because we use `div` instead of `/`. And the second part of the expression adds one extra desk.

{% include nav.html %}
