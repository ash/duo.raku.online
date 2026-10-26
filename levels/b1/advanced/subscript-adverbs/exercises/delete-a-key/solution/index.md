---
title: The solution of ’Delete a key‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `:delete` adverb removes the entry from the hash. It also returns the value, but here we ignore it.

1. The hash had three entries at the start, and now it has `2`. This shows that one was removed. We count with `.elems`, which does not depend on the order of the keys. So the output is always the same.

{% include nav.html %}
