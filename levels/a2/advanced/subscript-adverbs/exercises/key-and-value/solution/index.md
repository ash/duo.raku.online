---
title: The solution of ’Key and value‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 You can find the source code in the file [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Output

```
(x 10)
```

## Comments

1. The adverb `:kv` returns the key and the value. It gives them as a list.

1. For a hash, the key is the name in the subscript. So `%h<x>:kv` gives the list `(x 10)`.

{% include nav.html %}
