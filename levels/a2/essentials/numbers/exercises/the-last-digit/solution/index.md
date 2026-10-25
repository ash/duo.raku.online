---
title: 'Solution: The last digit'
---

{% include menu.html %}

Here is the idea of the solution. Use modulo division by 10. It gives the last digit of the number.

## Code

Here is the solution:

```raku
my $n = prompt 'Enter a number: ';
my $d = $n % 10;
say "The last digit of $n is $d.";
```

🦋 Find the program in the file [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Output

Run the program and enter a positive integer:

```console
$ raku exercises/numbers/the-last-digit.raku
Enter a number: 1234
The last digit of 1234 is 4.
```

## Comment

Be careful with negative numbers. Here, the result is not what you expect. For example, `-11 % 10` is `9`, not `1`.

{% include nav.html %}
