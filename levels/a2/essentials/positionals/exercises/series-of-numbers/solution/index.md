---
title: Solution of ‘Print a series of numbers’
---

{% include menu.html %}

You can solve this problem in more than one way.

## Code 1

The first solution is shorter. It is also more in the style of Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Find the program in the file [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Code 2

The second solution uses the `loop` statement.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Find the program in the file [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

As you see, the first variant is much shorter. It also shows the idea more clearly.

## Discussion

The first variant uses the [postfix form of the `for` loop](/essentials/loops/postfix-for). In this form, `for` comes after the statement. The second program uses `loop`.

## Output

Run the program. Enter the two numbers in the console. Both variants print the same result.

```console
$ raku exercises/positionals/series-of-numbers.raku
Begin: 15
End: 19
15
16
17
18
19
```

{% include nav.html %}
