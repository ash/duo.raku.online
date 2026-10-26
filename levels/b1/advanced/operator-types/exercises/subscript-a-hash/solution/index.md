---
title: The solution of ’Subscript a hash‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my %h = a => 1;
say %h<a>;
```

🦋 You can find the source code in the file [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Output

```
1
```

## Comments

1. The `< >` subscript is a postcircumfix operator. It comes after a term, the hash, and goes around the key.

1. `%h<a>` gives the value under the key `a`. That value is `1`.

{% include nav.html %}
