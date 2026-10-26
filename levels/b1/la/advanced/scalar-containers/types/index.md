---
title: Data genera et scalaria receptacula
---

{% include menu.html %}

Hic est programma quod unam variabilem pro diversis generibus datorum adhibet. `dd` adhibemus ut videamus quid in continenti in quoque gradu sit. Hoc exemplum solum ideam ostendit. Hunc modum programmandi non commendamus.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Quaeque vocatio `dd` ostendit quid in variabili `$value` illo momento sit:

```
$value = Any
$value = 42
$value = "forty-two"
```

Initio variabilis vacua est, et `dd` valorem eius ut `Any` ostendit. Hic est valor indefinitus basalis quo quisque continens sine typo incipit. Post assignationes `dd` numerum integrum et deinde seriem ostendit.

Nota quod `dd` hic typum ante nomen non imprimit. Continens sine typo nulli typo ligatus est, itaque solum valor ostenditur. Thema sequens ostendit [continentem cum typo declarato](/la/advanced/scalar-containers/type-constraints) aliter se gerere.

{% include nav.html %}
