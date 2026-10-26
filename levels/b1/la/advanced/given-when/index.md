---
title: '`given` et `when`'
translations_gpt:
---

{% include menu.html %}

Interdum programma inter plures optiones eligere debet. Tum catena probationum `if` et `elsif` longa et plena repetitionum fieri potest. In talibus casibus constructio `given`/`when` saepe clarior est. Similis est sententiae `switch` in aliis linguis.

Copia `given` valorem accipit et eum _topicum_ facit. Topicum est variabilis specialis `$_`. Deinde quaeque copia `when` cum hoc topico comparatur. Prima quae congruit currit:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Hoc programma imprimit:

```
two
```

Dissimiliter a `switch` in quibusdam linguis, nullus est transitus ad proximum casum. Simulac `when` congruit, copia eius currit, et copia `given` finita est. Ceterae copiae `when` non probantur.

## Copia `default`

Copia `default` currit cum nulla ex copiis `when` congruit. Idem munus agit ac ramus `else` sententiae `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` neque `1` neque `2` est, itaque programma imprimit:

```
many
```

{% include nav.html %}
