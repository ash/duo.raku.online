---
title: 'Solutio: Nomen nidificatum'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Codicem fontem in archivo [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku) invenire potes.

## Exitus

```
10
20
```

## Commentarii

1. Hic unum spatium nominum intra alterum est. Hoc longiorem viam `::` facit. Variabilis et subroutina duobus gradibus profunde sunt, in `Outer::Inner`.

1. Nomen plenum `$Outer::Inner::base` variabilem attingit. `Outer::Inner::doubled()` subroutinam attingit, per eosdem duos gradus. Nomen subroutinae sigillum non habet. Itaque `$` ante se non habet, sed variabilis unum habet.

1. Ambo `our` ante se habent. Hoc ea extra modulum suum visibilia facit. Cum `my`, privata intra `Inner` manerent.

{% include nav.html %}
