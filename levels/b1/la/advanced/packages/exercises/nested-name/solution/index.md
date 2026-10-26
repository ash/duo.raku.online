---
title: 'Solutio: Nomen nidificatum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Cum unum spatium nominum intra alterum ponis, longiorem viam `::` accipis. Tam variabilis quam subroutina duobus gradibus profunde sunt, in `Outer::Inner`.

1. Nomen plenum `$Outer::Inner::base` variabilem attingit. `Outer::Inner::doubled()` subroutinam per eosdem duos gradus attingit. Nomen subroutinae sigillum non habet. Itaque, dissimile variabili, `$` ante se non habet.

1. Ambo membra cum `our` declarata sunt. Hoc ea extra modulum suum visibilia facit. Cum `my`, privata intra `Inner` manerent.

{% include nav.html %}
