---
title: 'Utendo `WHAT`'
translations_gpt: Usus `WHAT`
---

{% include menu.html %}

`WHAT` est pseudo-methodus quae tibi typum valoris dat. Eam fere eodem modo quo `.^name` adhibere potes:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Ambo typum imprimunt, sed paulum aliter apparent. `.^name` nomen tantum dat, et `WHAT` obiectum typi in parenthesibus ostendit:

```
Int
(Int)
```

Si variabilis nullam restrictionem typi habet, typus eius primo est `Any`. Postquam valorem assignas, et `^name` et `WHAT` typum eius ostendunt:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Cum restrictione typi typus statim notus est, etiam antequam quidquam assignas:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Comparatio obiectorum typi

`WHAT` ipsum obiectum typi reddit, itaque duo obiecta typi cum `===` comparare potes. Hic est operator _identitatis valoris_. Probat an ambo latera prorsus idem valor sint. Quisque typus unum tantum obiectum typi habet. Itaque hic est modus purus probandi an duo valores eundem typum habeant:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` numeros comparat, sed `===` identitatem comparat. Itaque directe cum obiectis typi operatur, et etiam cum aliis valoribus.

{% include nav.html %}
