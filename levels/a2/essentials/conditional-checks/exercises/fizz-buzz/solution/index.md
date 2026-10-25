---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

This is a classic task at job interviews. It checks one thing. Do you think of the case when both conditions are `True`? Sometimes a number divides by both 3 and 5 with nothing left over. Then the program must print `FizzBuzz`.

## Code

Here is the solution:

```raku
my $n = prompt 'Enter a number: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Find the program in the file [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku ).

## Example

Test the program with a few groups of numbers:

* Numbers that divide by 3, for example: 3, 6, 9, 12.
* Numbers that divide by 5, for example: 5, 10, 15, 20.
* Numbers that divide by both 3 and 5, for example: 15, 30, 45.
* Numbers that do not divide by 3 or 5, for example: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Enter a number: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 30
FizzBuzz
```

{% include nav.html %}
