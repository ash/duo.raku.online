---
title: Solution of ’Fibonacci numbers’
---

{% include menu.html %}

This algorithm gives the Fibonacci numbers.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

The code follows the algorithm exactly. It uses two variables for the current two Fibonacci numbers. It changes them in a loop. Both variables get new values [in one assignment](/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Find the program in the file [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Output

Here is the output. The program prints the first 20 numbers.

```console
$ raku exercises/loops/fibonacci-numbers.raku
0
1
1
2
3
5
8
13
21
34
55
89
144
233
377
610
987
1597
2584
4181
```

## More about this

Remember this task. Later in the course, we come back to it. Then we solve it in a new way with Raku _sequences_.

{% include nav.html %}
