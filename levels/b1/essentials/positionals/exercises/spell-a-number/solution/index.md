---
title: 'Solution: Spell a number'
---

{% include menu.html %}

The program below has its own array of number names. It has the names of the numbers from 0 to 20. It also has the names of the tens: 20, 30, and so on. A chain of conditional checks then sends the number to one of the spelling rules.

## Code

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Two-digit non-round numbers, e.g., 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Multiples of 10, e.g., 50
    say @names[$n / 10 + 18];
}
```

🦋 Find the program in the file [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Example

Run the program a few times. Make sure you test all three branches of the `if`—`elsif`—`else` construction.

```console
$ raku exercises/positionals/spell-a-number.raku 5
five

$ raku exercises/positionals/spell-a-number.raku 12
twelve

$ raku exercises/positionals/spell-a-number.raku 67
sixty-seven

$ raku exercises/positionals/spell-a-number.raku 80
eighty
```

{% include nav.html %}
