---
title: Typis variabiles
---

{% include menu.html %}

In Raku, variabilis scalaris (vel continens scalare) unum obiectum continet. Hoc obiectum diversorum generum esse potest. Exempli gratia, eadem variabilis primo numerum, deinde stringam continere potest:

```raku
my $var = 42;
$var = 'Salve';
```

Hic est aliud exemplum, quod diversa genera datorum in una expressione miscet:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Haec fortasse non optima praxis codicis est. Sed est programma Raku omnino rectum.

Tamen Raku te sinit eligere quid variabilis continere possit. Plura in argumentis infra invenies.

{% include nav.html %}
