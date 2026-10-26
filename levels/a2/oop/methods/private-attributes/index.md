---
title: Private attributes
---

{% include menu.html %}

In the [section about attributes](/oop/attributes), each attribute had `$.` in its name. `$.` creates a public accessor. Everyone outside the object can use it. But you can also write `$!` instead. Then the attribute is _private_. It has no accessor. Code outside the object cannot see it. Only the methods of the class can use it. There, you write it as `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

The secret `$!code` is inside the object. But nobody outside can see it. There is no accessor `.code`. The only way to use the code is the method `unlocks`. The class gives you this method on purpose. Reading `$safe.code` or `$safe!code` simply fails.

Private attributes are good for details inside the object. The rest of the program should not touch them directly.

{% include nav.html %}
