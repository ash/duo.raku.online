---
title: '`print`'
---

{% include menu.html %}

La enkonstruita rutino `print` faras du aferojn:

1. Konvertas siajn argumentojn al ĉeno. Por tio, ĝi vokas la metodon `Str` sur ili.
1. Sendas la ĉenon al la fluo `STDOUT`.

Kun simplaj datumtipoj, `print` funkcias kiel [`say`](../say). Sed ĝi ne aldonas linifinan signon ĉe la fino.

```raku
print 42;
print 'Raku';
```

La programo presas la valorojn unu post la alia. Ankaŭ, ne estas linifina signo ĉe la fino de la tuta eligo.

```console
$ raku t.raku
42Raku
```

Kelkaj datumtipoj tenas multajn valorojn. Kun ili, `print` kaj `say` povas doni malsamajn rezultojn. Provu tabelojn kaj asocitabelojn, ekzemple:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Por apartigi la partojn

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Jen la eligo:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Vi ankaŭ povas voki `print` kiel metodon:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
