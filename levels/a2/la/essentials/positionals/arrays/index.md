---
title: Array
---

{% include menu.html %}

Arrayes sunt genera datorum aggregata. Hoc significat: array plus quam unum valorem continere potest. Hoc arrays a [scalaribus elementis](/la/essentials/scalar-variables) distinguit. Elementa array indicare, vel _subscribere_, potes. Aliis verbis, quodque elementum positionem habet. Ideo hoc genus datorum positionalia vocamus.

Variabiles array aliud sigillum habent: `@`. Regulae pro nomine eaedem sunt ac [pro scalaribus](/la/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Nunc array habemus. Nomen eius est `@cities`. Aliquot valores in id ponere potes:

```raku
@cities = 'Paris', 'Rome', 'Berlin';
```

Array etiam cum valoribus creare potes:

```raku
my @cities = 'Paris', 'Rome', 'Berlin';
```

## Indexatio

Ut unum elementum array habeas, par bracketorum adhibe. Bracketa post nomen variabilis pone:

```raku
say @cities[1];
```

Nota: sigillum idem manet. Semper est `@`. Raku elementa a zero numerat. Itaque in nostro exemplo `@cities[1]` est `'Rome'`.

Arrayes sunt mutabiles. Hoc significat: ea mutare potes. Ut elementum mutes, novum valorem ei assigna:

```raku
@cities[0] = 'Rome';
@cities[1] = 'Paris';
```

Post hoc, sententia `say @cities[1]` novum valorem imprimit, `'Paris'`.

## Magnitudo

Quae est longitudo array? Est numerus elementorum eius. Ut eam obtineas, methodo `elems` utere:

```raku
say @cities.elems; # 3
```

Interdum array adhibes ubi Raku numerum requirit. Tum magnitudinem array accipis:

```raku
say +@cities; # 3
```

Hic [`+` praefixus operator](/la/essentials/coercion/prefixes) numerum ex argumento suo requirit. Itaque eventus `+@cities` est `3`.

{% include nav.html %}
