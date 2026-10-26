---
title: 'Utendo `WHAT`'
translations_gpt: Usus `WHAT`
---

{% include menu.html %}

`WHAT` est pseudo-methodus. Typum valoris tibi dat. Eam fere ut `.^name` adhibes:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Ambo typum imprimunt, sed paulum aliter apparent. `.^name` solum nomen dat. `WHAT` typum ipsum dat, ut obiectum typi. Id in parenthesibus rotundis ostendit:

```
Int
(Int)
```

Sume variabilem sine restrictione typi. Primo typus eius est `Any`. Deinde valorem assignas. Nunc et `^name` et `WHAT` typum huius valoris ostendunt:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Cum restrictione typi Raku typum statim novit. Hoc verum est etiam antequam valorem assignas:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Comparatio obiectorum typi

`WHAT` ipsum obiectum typi reddit. Itaque duo obiecta typi comparare potes. Ad hoc operatorem `===` adhibe. Est operator _identitatis valoris_. Probat an ambo latera idem valor sint. Quisque typus unum tantum obiectum typi habet. Itaque `===` facile probat an duo valores eundem typum habeant:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` numeros comparat. Sed `===` identitatem comparat. Itaque directe cum obiectis typi operatur. Etiam cum aliis valoribus operatur.

{% include nav.html %}
