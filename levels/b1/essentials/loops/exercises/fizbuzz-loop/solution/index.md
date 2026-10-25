---
title: 'Solution: FizzBuzz in a loop'
---

{% include menu.html %}

This time, the divisibility check happens in a loop. Instead of printing the words directly, the program first collects them in a separate variable and later interpolates it into a string.

## Code

Here is the new solution:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Find the program in the file [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Output

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Comment

A very strict problem solver may find this solution not perfect, because it prints a space after the colon even for numbers that got no Fizz or Buzz. Change the program to avoid this problem.

{% include nav.html %}
