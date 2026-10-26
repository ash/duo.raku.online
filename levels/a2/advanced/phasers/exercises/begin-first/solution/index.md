---
title: The solution of ’Begin first‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 You can find the source code in the file [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Output

```
5
```

## Comments

1. `BEGIN { 2 + 3 }` runs during compilation. It gives `5`. Here, the `BEGIN` block is an expression. So it returns its value. The program puts this value into `$compiled`.

1. The calculation happens only once, at compile time. When the program runs, `$compiled` just keeps the fixed value `5`. So you can use `BEGIN` to calculate values early. It is not only for printing early.

{% include nav.html %}
