---
title: Variabiles dumping
translations_gpt:
---

{% include menu.html %}

Voca `dd` ut videas quid in variabili sit. Eam eodem modo adhibes ac `say`:

```raku
my $var = 42;
dd $var;
```

`dd` et valorem et nomen variabilis imprimit:

```console
$var = 42
```

Si variabilis typum declaratum habet, `dd` typum quoque ostendit. Compara output huius programmatis cum priore:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Haec est differentia principalis a `say`. Una vocatio `dd` in scalari tibi nomen variabilis dicit. Etiam typum datorum tibi dicit, cum notus est. Itaque plures vocationes `dd` programmati addere potes. Tamen videbis ad quam variabilem quodque output pertineat.

Etiam structuras datorum magis complexas exscribere potes, exempli gratia ordines vel hashes. Tum `dd` valorem in forma codici simili imprimit:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Nota quod ordinem insertum clare videre potes. Sed nomen variabilis non imprimitur. Idem pro hashes operatur, et `dd` claves eorum ordine alphabetico imprimit:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
