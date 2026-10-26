---
title: Private attributes
---

{% include menu.html %}

In the [section about attributes](/oop/attributes), we declared each attribute with `$.`. This creates a public accessor. If you declare an attribute with `$!` instead, it is _private_. It has no accessor, and you cannot see it from outside the object. Only the class’s own methods can reach it. There, you write it as `$!name`.

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

The secret `$!code` is kept inside the object, but it is never shown outside. There is no `.code` accessor. So you can only work with it through the `unlocks` method. The class chooses to provide this method. If you try to read `$safe.code` or `$safe!code`, it simply fails.

Private attributes are useful for internal details. The rest of the program should not work with these details directly.

{% include nav.html %}
