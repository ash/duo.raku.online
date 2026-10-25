---
title: 'Solution: Traffic lights'
---

{% include menu.html %}

Here is the idea of the solution. An array keeps the four states of the traffic lights. We ‘loop the indexing’ of this array:

```raku
my @lights = <yellow red yellow green>;
```

At first, count the seconds from the start. Use this number directly as an index in the array. Later, the number gets bigger than 3. Then you go back to the start of the array. The modulo operator `%` does this. The length of the array is `@lights.elems`. But here, you do not need to call the `elems` method. The array is an operand of `%`. So Raku converts the name of the array to a number. This conversion gives the number of elements.

## Code

Here is the solution:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Find the program in the file [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Output

Run the program. Then try other values in the program too.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
