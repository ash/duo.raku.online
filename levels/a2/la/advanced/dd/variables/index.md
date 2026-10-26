---
title: Variabiles dumping
translations_gpt:
---

{% include menu.html %}

Voca `dd` et valorem variabilis vides. Sicut `say` operatur:

```raku
my $var = 42;
dd $var;
```

`dd` valorem ostendit. Etiam nomen variabilis ostendit:

```console
$var = 42
```

Variabilis typum declaratum habere potest. Tum `dd` typum quoque ostendit. Compara output huius programmatis cum priore:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Haec est differentia principalis a `say`. Voca `dd` semel in scalari. Tibi nomen variabilis ostendit. Etiam typum datorum ostendit, si Raku eum novit. Itaque plures vocationes `dd` in programma ponere potes. Tamen variabilem cuiusque output cognoscis.

Etiam maiores structuras datorum exscribere potes, ut ordines vel hashes. Tum `dd` valorem in forma codici simili imprimit:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Nota: ordinem interiorem clare videre potes. Sed `dd` hic nomen variabilis non imprimit. Eodem modo cum hashes operatur. `dd` claves hash ordine alphabetico imprimit:

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
