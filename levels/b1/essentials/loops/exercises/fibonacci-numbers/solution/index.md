---
title: Solution of ’Fibonacci numbers’
---

{% include menu.html %}

This algorithm gives the Fibonacci numbers.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

The code follows the algorithm exactly. It keeps the two current Fibonacci numbers in two variables. The loop updates them. Note that both variables get new values [in a single assignment](/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

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

Here is the output of the program with the first 20 numbers.

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

## More on this subject

Remember this task, because we will come back to it later. Then we will find another exciting solution with Raku _sequences_.

{% include nav.html %}
