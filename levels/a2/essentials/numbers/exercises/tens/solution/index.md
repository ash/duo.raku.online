---
title: Solution to ‘Number of tens’
---

{% include menu.html %}

This is how you can solve the task.

## Code

```raku
my $n = prompt 'Enter a positive integer number: ';

say ($n % 100) div 10;
```

🦋 You can find the full code in the file [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Output

Run the program. Test it with a few different cases:

* A round number with three digits, for example, 120;
* A number that divides by 100 with no remainder, for example, 400;
* A number bigger than 10 but smaller than 100;
* A number less than 10.

For the number 234, the program prints this:

```console
$ raku exercises/numbers/tens.raku
Enter a positive integer number: 234
3
```

## Comments

Again, this solution uses two operators together: modulo `%` and integer division `div`.

Look at the space before the opening parenthesis. It must be there. Without it, you get a syntax error. We come back to [this feature](/essentials/more-on-functions/mind-the-space) of Raku in the section about functions. For now, type the code as you see it above. Or add one more pair of parentheses. Put them around the argument of the function. Then you do not need a space:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
