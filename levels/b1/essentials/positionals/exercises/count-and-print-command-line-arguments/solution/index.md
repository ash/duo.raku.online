---
title: Solution of ‘Count and print command-line arguments’
---

{% include menu.html %}

In this program, a `for` loop is a good choice.

## Code

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Find the program in the file [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Output

Run the program and check that it prints the arguments with line numbers:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discussion

This program uses a few handy tricks. First, the `for` loop goes over the [range made with `^`](/essentials/ranges/excluding-endpoints). So the range starts at 0. It goes up to the value of `@*ARGS`, but does not include it. In this context, `@*ARGS` [returns](/essentials/positionals/arrays#size) the length of the array.

The first element of an array has index `0`. But the task wants us to count the lines from `1`. This small shift is calculated [inside a code block](/essentials/strings/code-interpolation) in a string: `"{$n + 1} ..."`.

{% include nav.html %}
