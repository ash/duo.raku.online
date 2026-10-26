---
title: Using `VAR`
---

{% include menu.html %}

`VAR` is a pseudo-method that returns the container object behind a variable. For a scalar variable, a call to `.VAR` gives the `Scalar` container behind it.

## `^name`

With the container, you can ask for the name of its class with `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` on the variable gives the type of the _value_, `Int` or `Str`. But `.VAR.^name` gives the type of the _container_, which is `Scalar` in both cases.

## `default`

The `default` method returns the default value of the container. This is what you get when the container holds no value of its own. You can set it yourself with the `is default` trait:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

If you set no default, the default value is the type of the container. For a container without a type, it is `Any`. Its current value does not matter:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

For a typed container, it is the type in the constraint:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

The `name` method gives the name of the container, together with its sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Be careful not to confuse `^name` and `name`. The first gives the type, and the second gives the variable’s own name.

{% include nav.html %}
