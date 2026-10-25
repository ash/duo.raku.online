---
title: Solution of ‘Print a series of numbers’
---

{% include menu.html %}

There is more than one way to solve this problem.

## Code 1

The first solution is shorter and more typical of Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Find the program in the file [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Code 2

A second possible solution uses the `loop` statement.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Find the program in the file [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

As you see, the first variant is much shorter and shows the idea more clearly.

## Discussion

The first variant of the program uses the [postfix form of the `for` loop](/essentials/loops/postfix-for). The second program uses a `loop`.

## Output

Run the program and enter the two numbers in the console. Both variants give the same output.

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
