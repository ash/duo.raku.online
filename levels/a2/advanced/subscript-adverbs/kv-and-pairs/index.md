---
title: Keys, values, and pairs
---

{% include menu.html %}

Other adverbs change **what** a subscript returns. Usually, a subscript returns the value. These adverbs return more:

* `:v` — the value; this is the default
* `:k` — the key or the index
* `:kv` — the key and the value
* `:p` — a `Pair` of the key and the value

For an array, the “key” is the index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` returns the index and the value together in a list. `@a[1]:p` returns them as a pair.

This also works with hashes. It is very useful with a slice. A slice has several keys at once:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Here, the slice has two keys. The result is a key, its value, the next key, its value. `map`, `for`, and similar tools often use these adverbs. With them, you can work with keys and values together. You do not need separate lookups.

{% include nav.html %}
