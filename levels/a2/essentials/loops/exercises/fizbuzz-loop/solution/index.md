---
title: 'Solution: FizzBuzz in a loop'
---

{% include menu.html %}

This time, the program checks each number in a loop. It does not print the words at once. First, it collects them in a separate variable. Then it puts this variable into a string.

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

This solution has one small problem. It always prints a space after the colon. It does this even with no Fizz or Buzz. A very careful programmer does not like this. Change the program and fix it.

{% include nav.html %}
