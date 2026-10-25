---
title: Solution of ‘Count and print command-line arguments’
---

{% include menu.html %}

A `for` loop is good for this program.

## Code

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Find the program in the file [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Output

Run the program. Check that it prints the arguments and the line numbers:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discussion

This program uses a few useful tricks. First, the `for` loop goes over a [range made with `^`](/essentials/ranges/excluding-endpoints). The range starts at 0. It goes up to the value of `@*ARGS`. But this last value is not in the range. Here, `@*ARGS` [gives](/essentials/positionals/arrays#size) the length of the array.

The first element of an array has the index `0`. But the task wants line numbers from `1`. So we add 1 to the index. The program does this [in a code block](/essentials/strings/code-interpolation) inside a string: `"{$n + 1} ..."`.

{% include nav.html %}
