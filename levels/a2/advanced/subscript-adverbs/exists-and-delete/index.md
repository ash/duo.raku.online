---
title: Exists and delete
---

{% include menu.html %}

The adverb `:exists` makes a subscript into a question. Is there a value at this key or index? The answer is `True` or `False`. The adverb does not get the value:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

This is the right way to check for a key. You can also just read `%h<plum>`. But then you get an undefined value. Or, with some data, you cannot see the difference. Is the key “missing”? Or is it “present but undefined”?

The adverb `:delete` removes the entry. It returns the value of the entry:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

The entry `apple` is gone. You get back its value `1`. You can use this value.

Both adverbs also work with arrays. There, you use an index:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

You remove an item from the middle. How does the array look then? Here is the answer:

```raku
say @a; # [10 (Any) 30]
```

So you use one notation, and it always works the same way. With it, you can ask about a container. You can also change the container in place. You do not need separate methods for this.

{% include nav.html %}
