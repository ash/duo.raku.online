---
title: 'Solution: Function table'
---

{% include menu.html %}

This program is probably a good example of the `loop` loop. With `loop`, you can set the two ends and the step. You set them directly in the units that you need. You can come back to this task later, when you learn about Raku _sequences_.

## Code

Here is the solution:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Find the program in the file [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Output

The program prints a long x — f(x) table. Here is a part of the output:

```console
$ raku exercises/functions/function-table.raku
-3	9
-2.9	8.41
-2.8	7.84

. . .

-0.2	0.04
-0.1	0.01
0	0
0.1	0.01
0.2	0.04

. . .

2.7	7.29
2.8	7.84
2.9	8.41
3	9
```

## Visualisation

It is a good idea to turn the output into a graph. You can do it with another program, for example, Excel or gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
