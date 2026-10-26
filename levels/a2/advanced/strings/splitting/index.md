---
title: Splitting and joining
---

{% include menu.html %}

You can split a string into parts in several ways. You can also put the parts together again.

The `words` method splits a string into a list of words. Whitespace, for example a space, separates the words:

```raku
say 'Hello big World'.words; # (Hello big World)
```

The `split` method cuts a string at a separator. You choose the separator:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Here is an important special case. You can split on the **empty string** `''`. Then you get the single characters of the string. But you also get two more empty strings. They are at the very start and at the very end. So the result has two more elements than you expect:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Do you want to split a string into characters? Call the `comb` method with no arguments. It does this directly. There are no extra empty strings:

```raku
say 'Raku'.comb; # (R a k u)
```

The `join` method does the opposite. It joins a list of values into one string. It puts a separator between the values:

```raku
say <a b c>.join('-'); # a-b-c
```

Two more methods work with parts of a string. The `substr` method gives you a piece of a string. You give it a start position. If you want, you can also give it a length:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

And `trim` removes the whitespace at both ends of a string:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
