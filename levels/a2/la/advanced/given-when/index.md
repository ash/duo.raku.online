---
title: '`given` et `when`'
translations_gpt:
---

{% include menu.html %}

Interdum programma inter plures optiones eligere debet. Catena probationum `if` et `elsif` longa fieri potest. Etiam easdem res iterat. In hoc casu constructio `given`/`when` saepe clarior est. Similis est sententiae `switch` in aliis linguis.

Copia `given` valorem accipit. Hunc valorem _topicum_ facit. Topicum est variabilis specialis `$_`. Deinde Raku quamque copiam `when` cum topico comparat. Prima copia `when` quae congruit currit:

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

Quaedam aliae linguae sententiam `switch` habent. Post congruentiam ad proximum casum pergere potest. Raku hoc non facit. Cum `when` congruit, copia eius currit. Deinde copia `given` finitur. Raku ceteras copias `when` non probat.

## Copia `default`

Copia `default` currit cum nulla copia `when` congruit. Sicut pars `else` sententiae `if` operatur:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` non est `1` et non est `2`. Itaque programma imprimit:

```
many
```

{% include nav.html %}
