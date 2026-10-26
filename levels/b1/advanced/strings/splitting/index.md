---
title: Splitting and joining
---

{% include menu.html %}

There are several ways to split a string into parts and join them again.

The `words` method splits a string at whitespace into a list of words:

```raku
say 'Hello big World'.words; # (Hello big World)
```

The `split` method splits a string at a separator of your choice:

```raku
say 'a,b,c'.split(','); # (a b c)
```

An important special case is splitting on the **empty string** `''`. It splits a string into its single characters. But it also adds an empty string at the very start and the very end. So the result has two more elements than you might expect:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

To split a string into characters, you can call the `comb` method without arguments. It does this directly, and there are no extra empty strings to remove:

```raku
say 'Raku'.comb; # (R a k u)
```

To go the other way, use the `join` method. It joins a list of values into one string and puts a separator between them:

```raku
say <a b c>.join('-'); # a-b-c
```

Two more methods work with parts of a string. The `substr` method returns a piece of a string. You give it a start position and, if you want, a length:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

And `trim` removes the whitespace at the start and at the end of a string:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
