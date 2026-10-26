---
title: The solution of ’Dump the data structure‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 You can find the source code in the file [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Output

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Comments

1. `dd @data` prints what is in the array. It prints it in a form like code. This output goes to the standard error stream.

1. The `.raku` method returns the same form as a string. The program puts this string into a normal message. For this, it runs code inside the string. Then `say` prints the message to the standard output.

1. Here, the two lines look the same. But they go to different output streams. The first line comes from `dd` and goes to standard error. The second line comes from `say` and goes to standard output. Compare these two runs:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
