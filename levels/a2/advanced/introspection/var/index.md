---
title: Using `VAR`
---

{% include menu.html %}

`VAR` is a pseudo-method. It returns the container object behind a variable. For a scalar variable, `.VAR` returns its `Scalar` container.

## `^name`

Now you have the container. You can ask for the name of its class with `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` on the variable returns the type of the _value_. It is `Int` or `Str`. `.VAR.^name` returns the type of the _container_. In both cases, it is `Scalar`.

## `default`

The method `default` returns the default value of the container. An empty container gives you this value. It has no value of its own. You can set the default yourself with the trait `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Maybe you do not set a default. Then the default value is the type of the container. A container with no type has the default `Any`. It does not matter what value is in it now:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

For a container with a type, the default is that type:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

The method `name` returns the name of the container, with the sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Do not mix up `^name` and `name`. `^name` gives the type. `name` gives the name of the variable.

{% include nav.html %}
