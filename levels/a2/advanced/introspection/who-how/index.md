---
title: '`WHO` and `HOW`'
---

{% include menu.html %}

Two more tools for introspection are `HOW` and `WHO`. They complete the set.

## `HOW`

Every value in Raku has a _metaobject_ behind it. A metaobject is an object. It knows how the type of the value works. `HOW` is short for _Higher Order Workings_. It returns the metaobject:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

You already use the metaobject. Maybe you did not notice it. The `.^` in `.^name` is a method call. This call goes through `HOW`. These two lines do the same thing:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

So `$x.^name` is only a short way to write `$x.HOW.name($x)`. Note that the object goes in again as an argument. Why? All values of a type *share* one metaobject. The methods of the metaobject are meta-methods. A meta-method must know which object you ask about. The form `.^` passes the object for you. For `name`, Raku does not use this argument. But the right, general way is to pass it. Some meta-methods do use it.

This is also true for other meta-methods. One example is `.^methods`. It gives a list of methods. You can call these methods on the value.

## `WHO`

`WHO` returns the _package_ of a name. It is a table of the names, or symbols, in that namespace:

```raku
say Int.WHO.^name; # Stash
```

A `Stash` is a hash for a table of symbols. It is useful with modules. With it, you can look up the names of a module. We come back to it in [the section about modules](/advanced/module-introspection). For now, just remember that `WHO` exists. Also remember what it gives you.

{% include nav.html %}
