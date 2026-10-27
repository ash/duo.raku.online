---
title: The solution of ’Capture the output‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `:out` sends the output into the `Proc`. It does not go to the screen. `.out.slurp(:close)` reads all of it back. `.trim` removes the newline at the end. `echo` adds this newline.

1. Now the output is an ordinary string in our program. We work with it like with any other data. `.words.elems` splits the string at the whitespace. Then it counts the pieces. The result is `3`. This is why we capture output. The external program becomes one part of our work. We use its result in the next steps.

{% include nav.html %}
