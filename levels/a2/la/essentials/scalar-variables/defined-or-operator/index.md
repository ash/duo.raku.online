---
title: Definita-vel operator
---

{% include menu.html %}

Interdum variabilis nondum valorem habet. Tum alio valore pro eo uti potes. Ad hoc est operator `//`. Is operator _definitus-vel_ vocatur.

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

Prima linea variabili `$a` valorem dat. Itaque expressio `$a // 'gamma'` valorem praesentem `$a` adhibet. Variabilis `$b` alia est. Valorem non habet. Itaque `$b // 'delta'` valorem in latere dextro reddit. Programma `delta` imprimit.

## //=

Simul `//` et `=` operatorem `//=` faciunt. Is valorem assignat solum cum variabilis non definita est.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
