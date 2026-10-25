---
title: La difinita-aŭ operatoro
---

{% include menu.html %}

La tiel nomata operatoro _difinita-aŭ_ `//` helpas, kiam variablo ankoraŭ ne havas valoron. En tiu kazo, ĝi donas al vi alian valoron por uzi anstataŭe.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Ĉi tiu programo presas:

```
alpha
delta
```

La valoro de `$a` estas agordita en la unua linio. Do la esprimo `$a // 'gamma'` uzas la nunan valoron de `$a`. La variablo `$b`, aliflanke, ne ricevis komencan valoron. Do `$b // 'delta'` redonas la operandon ĉe la dekstra flanko, kaj la programo presas `delta`.

## //=

Kiam vi kombinas `//` kaj `=`, vi ricevas la operatoron `//=`. Ĝi asignas valoron nur se la variablo ne estas difinita.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
