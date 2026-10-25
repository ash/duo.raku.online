---
title: 'Solution: Traffic lights'
---

{% include menu.html %}

The idea of the solution is to ‘loop the indexing’ of an array. The array keeps the four states of the traffic lights:

```raku
my @lights = <yellow red yellow green>;
```

At first, the number of seconds since the start is used directly as an index. When it is bigger than 3, you go back to the start of the array. The modulo operator `%` does this. The length of the array is `@lights.elems`. But with `%`, you do not need to call the `elems` method. The array is an operand of `%`, so its name is converted to a number. This conversion is designed to give the number of elements.

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

Run the program. Also try other values in the program.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
