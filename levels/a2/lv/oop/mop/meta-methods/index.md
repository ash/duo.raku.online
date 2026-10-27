---
title: Metametodes
translations_gpt:
---

{% include menu.html %}

Jūs izsaucat _metametodi_ ar `.^`, nevis ar `.`. Parasta `.method` izpilda objekta metodi. Ar `.^method` ir citādi. Tā izsauc metodi uz objekta **metaobjekta**. Metaobjekts ir objekts, kas apraksta tipu. Tāpēc izsaukums jautā par tipu. Tas nedarbojas kā tips.

Jūs jau zināt `.^name`. Tā atgriež tipa nosaukumu:

```raku
say 42.^name; # Int
```

Citas metametodes parāda, kā tips ir uzbūvēts. `.^attributes` uzskaita tā atribūtus. `.^find_method` pasaka jums, vai tāda metode ir:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` atgriež _metožu atrisināšanas secību_. Tā ir tipu ķēde. Raku meklē metodi katrā no tiem, šajā secībā. Tā ir klases mantošanas līnija:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` manto no `A`. Galu galā katrs tips manto no `Any` un `Mu`. Jūs izsaucat metodi uz `B`. Tad Raku meklē to tieši pa šo ceļu. Šīs metametodes pārvērš jūsu tipus par datiem. Šie dati parāda, kā tipi ir uzbūvēti. Jūs varat par tiem jautāt, kamēr programma darbojas.

{% include nav.html %}
