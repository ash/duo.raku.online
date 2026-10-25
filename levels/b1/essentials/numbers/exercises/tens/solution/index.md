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

Run the program and test a few different cases:

* A round three-digit number, such as 120;
* A multiple of 100, for example, 400;
* A number bigger than 10 but smaller than 100;
* A number less than 10.

For the number 234, the output of the program looks like this:

```console
$ raku exercises/numbers/tens.raku
Enter a positive integer number: 234
3
```

## Comments

This solution again combines modulo `%` and integer division `div`.

Note the space before the opening parenthesis. It must be there, or you will get a syntax error. We will come back to [this feature](/essentials/more-on-functions/mind-the-space) of Raku in the section about functions. For now, type the code as shown above. Or you can put another pair of parentheses around the argument of the function. In this case, you do not need a space:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
