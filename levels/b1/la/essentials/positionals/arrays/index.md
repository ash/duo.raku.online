---
title: Array
---

{% include menu.html %}

Arrayes sunt genera datorum aggregata, id est plus quam unum valorem continere possunt. Hoc ea a [scalaribus elementis](/la/essentials/scalar-variables) distinguit. Elementa array indicari (vel _subscribi_) possunt. Aliis verbis, quodque elementum positionem habet. Ideo data huius generis nomen generale positionalia habent.

Pro variabilibus array est aliud sigillum: `@`. Regulae pro nomine variabilis eaedem sunt ac [pro scalaribus](/la/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Nunc array nomine `@cities` creavimus. Id aliquot valoribus implere potes:

```raku
@cities = 'Paris', 'Rome', 'Berlin';
```

Valores etiam statim ponere potes, cum array creas:

```raku
my @cities = 'Paris', 'Rome', 'Berlin';
```

## Indexatio

Ut unum elementum array obtineas, par bracketorum post nomen eius adde:

```raku
say @cities[1];
```

Nota quod sigillum semper idem manet. Elementa a zero numerantur, itaque in nostro exemplo elementum `@cities[1]` est `'Rome'`.

Arrayes sunt mutabiles, id est ea mutare potes. Ut elementum mutes, simpliciter novum valorem ei assigna:

```raku
@cities[0] = 'Rome';
@cities[1] = 'Paris';
```

Nunc sententia `say @cities[1]` novum valorem imprimit, `'Paris'`.

## Magnitudo

Longitudo array est numerus elementorum eius. Ut longitudinem praesentem obtineas, methodo `elems` utere:

```raku
say @cities.elems; # 3
```

Si array apparet ubi numerus exspectatur, magnitudinem eius accipis:

```raku
say +@cities; # 3
```

Hic [`+` praefixus operator](/la/essentials/coercion/prefixes) numerum ex argumento suo requirit. Ideo `+@cities` dat `3`.

{% include nav.html %}
