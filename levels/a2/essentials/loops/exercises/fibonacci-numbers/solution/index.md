---
title: Solution of ’Fibonacci numbers’
---

{% include menu.html %}

Here is how to get the Fibonacci numbers.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

The code does exactly what the algorithm says. It has two variables for the two current Fibonacci numbers. The loop changes them each time. Both variables get new values [in one assignment](/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

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

Here is the output. It shows the first 20 numbers.

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

Remember this task. Later, we come back to it. Then we use Raku _sequences_. This is a new and exciting way to solve it.

{% include nav.html %}
