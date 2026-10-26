---
title: Keys, values, and pairs
---

{% include menu.html %}

Other adverbs change **what** a subscript gives back. Normally, a subscript returns only the value, but these adverbs return more:

* `:v` — the value (the default)
* `:k` — the key (or index)
* `:kv` — both the key and the value
* `:p` — a `Pair` of key and value

For an array, the “key” is the index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` gives the index and the value together in a list. `@a[1]:p` gives them as a pair.

The same works for hashes. It is especially useful with a slice of several keys at once:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Here, a slice of two keys gives back each key followed by its value. `map`, `for`, and similar tools often rely on these adverbs. They let you process keys and values side by side, without separate lookups.

{% include nav.html %}
