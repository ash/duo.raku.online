---
title: Exists and delete
---

{% include menu.html %}

The `:exists` adverb turns a subscript into a question. Is there a value at this key or index? The adverb returns a Boolean value, but it does not get the value itself:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

This is the right way to check for a key. If you just read `%h<plum>`, you get an undefined value. Depending on the data, this can hide the difference between “missing” and “present but undefined”.

The `:delete` adverb removes the entry and gives you back its value:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

The `apple` entry is gone. You get back the deleted value `1`, so you can use it.

Both adverbs also work on arrays, with an index:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

What does the array look like after an item in the middle is removed? Here is the answer:

```raku
say @a; # [10 (Any) 30]
```

So one consistent notation lets you check and change containers in place. You do not need separate methods for this.

{% include nav.html %}
