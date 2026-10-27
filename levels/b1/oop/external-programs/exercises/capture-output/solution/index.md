---
title: The solution of ’Capture the output‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 You can find the source code in the file [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Output

```
3
```

## Comments

1. `:out` sends the program's output into the `Proc` instead of the screen. `.out.slurp(:close)` reads all of it back. `.trim` removes the newline that `echo` adds at the end.

1. Now the output is an ordinary string in our program. We treat it like any other data. `.words.elems` splits it at whitespace and counts the pieces, which gives `3`. This is the point of capturing output. The external program becomes a building block, and we process its result further.

{% include nav.html %}
