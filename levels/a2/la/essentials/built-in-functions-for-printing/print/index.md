---
title: '`print`'
---

{% include menu.html %}

Rutina aedificata `print` duas res facit:

1. Argumenta sua in chordam convertit. Ad hoc methodum `Str` in eis vocat.
1. Chordam ad rivum `STDOUT` mittit.

Cum simplicibus generibus datorum, `print` sicut [`say`](../say) operatur. Sed characterem novae lineae in fine non addit.

```raku
print 42;
print 'Raku';
```

Programma valores unum post alium imprimit. Etiam in fine totius output nulla nova linea est.

```console
$ raku t.raku
42Raku
```

Quaedam genera datorum multos valores servant. Cum eis, `print` et `say` diversos eventus dare possunt. Tenta, exempli gratia, arrays et hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Ad separandas partes

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Ecce output:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Etiam `print` ut methodum vocare potes:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
