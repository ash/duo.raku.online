---
title: 'Utendo `VAR`'
translations_gpt: Usus `VAR`
---

{% include menu.html %}

`VAR` est pseudo-methodus. Obiectum receptaculi post variabilem reddit. Pro variabili scalari `.VAR` receptaculum eius `Scalar` reddit.

## `^name`

Nunc receptaculum habes. Nomen classis eius cum `.^name` petere potes:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` in variabili typum _valoris_ reddit. Est `Int` vel `Str`. `.VAR.^name` typum _receptaculi_ reddit. In utroque casu est `Scalar`.

## `default`

Methodus `default` valorem praedefinitum receptaculi reddit. Receptaculum vacuum hunc valorem tibi dat. Nullum valorem proprium habet. Praedefinitum ipse tropo `is default` constituere potes:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Fortasse praedefinitum non constituis. Tum valor praedefinitus est typus receptaculi. Receptaculum sine typo praedefinitum `Any` habet. Valor qui nunc in eo est nihil refert:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Pro receptaculo cum typo praedefinitum est ille typus:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Methodus `name` nomen receptaculi reddit, cum sigillo:

```raku
my $language;
say $language.VAR.name; # $language
```

Noli `^name` et `name` confundere. `^name` typum dat. `name` nomen variabilis dat.

{% include nav.html %}
