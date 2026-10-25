---
title: '`print`'
---

{% include menu.html %}

Hoc est quod rutina aedificata `print` facit:

1. Methodum `Str` in argumentis suis vocat ut ea in chordam convertat.
1. Chordam ad rivum `STDOUT` mittit.

Pro simplicibus generibus datorum, `print` fere idem output dat ac [`say`](../say). Solum characterem novae lineae in fine non habet.

```raku
print 42;
print 'Raku';
```

Duo valores alter statim post alterum imprimuntur. Totum output quoque sine nova linea desinit.

```console
$ raku t.raku
42Raku
```

Cum datis quae plures valores tenent, eventus a `say` differre potest. Exempli gratia, tenta arrays et hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Ad separandas partes

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Sic aspicit output:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Rutinam `print` etiam ut methodum vocare potes:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
