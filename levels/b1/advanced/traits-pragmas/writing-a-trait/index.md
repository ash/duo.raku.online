---
title: Writing a trait
---

{% include menu.html %}

Traits are ordinary multi-subroutines with a special name, so you can write your own. To add a trait called `is something`, define a `multi sub trait_mod:<is>`. Its parameters say what the trait applies to and give the trait its name:

This is one of the more advanced parts of Raku. Do not worry if it seems complicated. You can use the built-in traits perfectly well without knowing how they are made. You will rarely need to write one yourself. So take this page as a look at how things work inside.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Read the signature. The first parameter, `Routine:D $r`, is the thing the trait is attached to. Here, it is a subroutine. The `:D` is a type _smiley_ that requires a **defined** value. This means a real routine object, not the undefined `Routine` type itself. Its partners are `:U`, which requires the undefined type object, and `:_`, which accepts both. The named parameter `:$traced!` is the name of the trait itself. Because this parameter is there, `is traced` calls this sub. Traits run at **compile time**. So `foo` and `bar` are recorded as soon as they are declared. When the program runs, `@traced` already lists them. You could even move the `say @traced` line above the two `sub` definitions. It would still print `[foo bar]`.

This small trait only records names, but the same idea can do much more. It can wrap a routine to add logging, check an attribute, or add metadata. The first parameter can also be an `Attribute` or `Variable` instead of a `Routine`. Then the trait applies to attributes or variables. Traits are the way Raku keeps its declaration syntax open. The built-in `is rw` and your own `is traced` are made in the same way.

{% include nav.html %}
