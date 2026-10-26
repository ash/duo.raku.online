---
title: Writing a trait
---

{% include menu.html %}

Traits are normal multi-subroutines with a special name. So you can write your own traits. Do you want a trait `is something`? Then define a `multi sub trait_mod:<is>`. Its parameters say two things. They say what the trait works on. They also give the name of the trait:

This is one of the harder parts of Raku. Do not worry if it looks difficult. You can use the built-in traits well without this knowledge. You do not need to know how they are made. You will rarely need to write a trait yourself. This page just shows you how traits work inside.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Look at the signature. The first parameter is `Routine:D $r`. It is the thing that has the trait. Here, it is a subroutine. The `:D` is a type _smiley_. It needs a **defined** value. This is a real routine object. It is not the undefined type `Routine` itself. There are two other smileys. `:U` needs the undefined type object. `:_` takes both. The named parameter `:$traced!` is the name of the trait. This parameter is the reason why `is traced` calls this sub. Traits run at **compile time**. So Raku records `foo` and `bar` right when it reads their declarations. When the program runs, `@traced` already has both names. You can even move the line `say @traced` up, above the two `sub` definitions. It still prints `[foo bar]`.

This small trait only records names. But the same idea can do much more. For example, a trait can wrap a routine to add logging. It can check an attribute. Or it can attach metadata, that is, extra data about the code. Here, the first parameter is a `Routine`. You can also make it an `Attribute` or a `Variable`. Then the trait works with attributes or variables. Traits keep the syntax of declarations in Raku open. You can always add new traits. The built-in `is rw` and your own `is traced` are made in the same way.

{% include nav.html %}
