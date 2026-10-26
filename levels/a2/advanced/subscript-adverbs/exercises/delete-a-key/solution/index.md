---
title: The solution of ’Delete a key‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 You can find the source code in the file [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Output

```
2
```

## Comments

1. The adverb `:delete` removes the entry from the hash. It also returns the value, but here we do not use it.

1. At first, the hash had three entries. Now it has `2`. So one entry is gone. We count the entries with `.elems`. The order of the keys does not matter for this. So the output is always the same.

{% include nav.html %}
