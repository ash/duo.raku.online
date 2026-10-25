---
title: 'Solution: Compare `say` and `put`'
---

{% include menu.html %}

## Code

Here is one way to solve it:

```raku
my Int $i = 256;
say $i;
put $i;

my Rat $r = 1/8;
say $r;
put $r;

my Num $n = 6.022e23;
say $n;
put $n;

my Str $s = 'camelia';
say $s;
put $s;

my @a = <red green blue>;
# say @a.WHAT;
say @a;
put @a;

my List $l = (10, 20, 30);
# say $l.WHAT;
say $l;
put $l;

my Range $range = 1..5;
say $range;
put $range;

my %h = x => 10, y => 20;
say %h;
put %h;
```

You can also print the type of a variable. The code shows this for the array and the list. This way, you can be sure that the type is right.

🦋 Find the program in the file [compare-say-and-put.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/compare-say-and-put.raku).

## Output

Here is the output of the program:

```console
$ raku exercises/built-in-functions-for-printing/compare-say-and-put.raku
256
256
0.125
0.125
6.022e+23
6.022e+23
camelia
camelia
[red green blue]
red green blue
(10 20 30)
10 20 30
1..5
1 2 3 4 5
{x => 10, y => 20}
x	10
y	20
```

## Comments

Look at the output of the program. Numbers and strings are simple data types. `say` and `put` print them in the same way. Data types with many values are different. For them, `say` gives a bit more ‘noisy’ output than `put`. But with hashes, `put` prints a table. `say` prints the hash on one line. The `Range` is very interesting. `say` keeps the short form `1..5`. But `put` prints all the values one by one: `1 2 3 4 5`.

Why is the output different? It depends on two methods: `Str` and `gist`. Each type has its own version of these methods. We talk more about this later in the course.

{% include nav.html %}
