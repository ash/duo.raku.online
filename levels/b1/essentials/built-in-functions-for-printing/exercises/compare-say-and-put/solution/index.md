---
title: 'Solution: Compare `say` and `put`'
---

{% include menu.html %}

## Code

Here is one possible solution:

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

To be more sure, you can also print the type of each variable. The code shows this for arrays and lists. This way, you can check that the variable has the type you wanted.

🦋 Find the program in the file [compare-say-and-put.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/compare-say-and-put.raku).

## Output

Below is the output of the program above.

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

Look at the output of the program. Clearly, there is no difference for simple data types, such as numbers and strings. For types that hold several values, `say` gives a bit more ‘noisy’ output than `put`. On the other hand, `put` prints a hash as a table. `say` prints it on a single line. The `Range` is especially interesting. `say` keeps the short form `1..5`, while `put` turns it into separate values: `1 2 3 4 5`.

Why does the output look different? It depends on how the `Str` and `gist` methods work for each type. We will talk more about this later in the course.

{% include nav.html %}
