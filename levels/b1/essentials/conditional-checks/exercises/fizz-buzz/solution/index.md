---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

This is a classic task for job interviews. It shows whether you remember the case when both conditions are `True`. When a number is divisible by both 3 and 5, the program should print `FizzBuzz`.

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

Test the program with a few different kinds of input:

* Numbers divisible by 3, for example: 3, 6, 9, 12.
* Numbers divisible by 5, for example: 5, 10, 15, 20.
* Numbers divisible by both 3 and 5, for example: 15, 30, 45.
* Other numbers, which are divisible by neither 3 nor 5, for example: 4, 7, 11.

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
