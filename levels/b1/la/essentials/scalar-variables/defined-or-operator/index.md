---
title: Definita-vel operator
---

{% include menu.html %}

Operator sic dictus _definitus-vel_ `//` adiuvat cum variabilis nondum valorem habet. Hoc casu tibi alium valorem dat, quem loco eius adhibere potes.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Hoc programma imprimit:

```
alpha
delta
```

Valor `$a` in prima linea statuitur. Itaque expressio `$a // 'gamma'` valorem praesentem `$a` adhibet. Variabilis `$b` autem valorem initialem non accepit. Itaque `$b // 'delta'` operandum in latere dextro reddit, et programma `delta` imprimit.

## //=

Cum `//` et `=` coniungis, operatorem `//=` accipis. Is valorem assignat solum si variabilis non definita est.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
