---
title: '`WHO` and `HOW`'
---

{% include menu.html %}

The last two introspection tools in the set are `HOW` and `WHO`.

## `HOW`

Behind every value in Raku, there is a _metaobject_. This is an object that knows how the type of the value works. `HOW`, which is short for _Higher Order Workings_, returns this metaobject:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

In fact, you have used the metaobject all the time, maybe without noticing it. The `.^` in `.^name` is a method call that goes through `HOW`. These two lines do the same thing:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

So `$x.^name` is just a shorter way to write `$x.HOW.name($x)`. Note that the object is passed in again as an argument. This is because every value of the type *shares* the same metaobject. So a meta-method must be told which object you are asking about. The `.^` form does this for you automatically. For `name`, the argument is actually ignored. But passing it is the correct, general form, because some meta-methods do use it.

The same is true for other meta-methods that you may see, such as `.^methods`. It lists the methods that you can call on a value.

## `WHO`

`WHO` returns the _package_ that a name belongs to. This is the table of symbols that are defined in that namespace:

```raku
say Int.WHO.^name; # Stash
```

A `Stash` is a hash that holds a symbol table. It becomes useful when you work with modules. Then it lets you look up the names that a module defines. We will come back to it in [the section about modules](/advanced/module-introspection). For now, it is enough to know that `WHO` exists and what it returns.

{% include nav.html %}
