---
title: The solution of ’Dump the data structure‘
---

{% include menu.html %}

Here is one possible solution to the task.

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

1. `dd @data` prints the contents of the array in a code-like form. This output goes to the standard error stream.

1. The `.raku` method returns the same representation as a string. This string is then inserted into a normal message, with code inside curly braces. Then `say` prints the message to the standard output.

1. The two lines look the same here, but they go through different output streams. The first comes from `dd` and goes to standard error. The second comes from `say` and goes to standard output. Compare the following:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
