---
title: '`print`'
---

{% include menu.html %}

Jen kion la enkonstruita rutino `print` faras:

1. Vokas la metodon `Str` sur siaj argumentoj por konverti ilin al ĉeno.
1. Sendas la ĉenon al la fluo `STDOUT`.

Por simplaj datumtipoj, `print` donas preskaŭ la saman eligon kiel [`say`](../say). Ĝi nur ne havas linifinan signon ĉe la fino.

```raku
print 42;
print 'Raku';
```

La du valoroj estas presitaj tuj unu post la alia. Ankaŭ la tuta eligo ne finiĝas per linifina signo.

```console
$ raku t.raku
42Raku
```

Kun datumoj, kiuj tenas plurajn valorojn, la rezulto povas esti alia ol kun `say`. Ekzemple, provu tabelojn kaj asocitabelojn:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Por apartigi la partojn

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Jen kiel la eligo aspektas:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Vi ankaŭ povas voki la rutinon `print` kiel metodon:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
