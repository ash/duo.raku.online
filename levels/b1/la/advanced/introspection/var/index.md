---
title: 'Utendo `VAR`'
translations_gpt: Usus `VAR`
---

{% include menu.html %}

`VAR` est pseudo-methodus quae obiectum receptaculi post variabilem reddit. Pro variabili scalari vocatio `.VAR` receptaculum `Scalar` post eam dat.

## `^name`

Cum receptaculo nomen classis eius per `.^name` petere potes:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` in variabili typum _valoris_ dat, `Int` vel `Str`. Sed `.VAR.^name` typum _receptaculi_ dat, qui in utroque casu `Scalar` est.

## `default`

Methodus `default` valorem praedefinitum receptaculi reddit. Hoc accipis cum receptaculum nullum valorem proprium continet. Eum ipse tropo `is default` constituere potes:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Si nullum praedefinitum constituis, valor praedefinitus est typus receptaculi. Pro receptaculo sine typo est `Any`. Valor eius praesens nihil refert:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Pro receptaculo cum typo definito est typus in restrictione:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Methodus `name` nomen receptaculi dat, una cum sigillo eius:

```raku
my $language;
say $language.VAR.name; # $language
```

Cave ne `^name` et `name` confundas. Prius typum dat, et alterum nomen proprium variabilis dat.

{% include nav.html %}
