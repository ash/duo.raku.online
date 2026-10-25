---
title: Paria
---

{% include menu.html %}

Par est structura datae. Nomen et valorem continet. Simul unum obiectum totum faciunt. Hoc obiectum in variabili scalari servare potes. Sic par creas:

```raku
my $pair = name => 'Anna';
```

Variabilis `$pair` typum `Pair` habet:

```raku
say $pair.WHAT; # (Pair)
```

Nomen et valorem seorsum accipere potes. Methodus `key` nomen dat. Methodus `value` valorem dat:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Paria proprietatem gravem habent. Immutabilia sunt. Hoc significat: novum valorem pari dare non potes. Etiam novum nomen ei dare non potes. Certe omnino novum par eidem variabili assignare potes:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subscripting

Valorem paris etiam alio modo legere potes. Par subscribere potes. Nomen clavis eius in uncis angularibus pone. Ecce quomodo:

```raku
say $pair<name>;
```

Nota: clavis sine spatiis quotationes non requirit. Si clavis spatia habet, regulae paulo strictiores sunt:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Nota: hoc tempore codex uncos curvos adhibet.

{% include nav.html %}
