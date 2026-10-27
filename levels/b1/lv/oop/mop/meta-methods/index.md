---
title: Metametodes
translations_gpt:
---

{% include menu.html %}

_Metametodi_ izsauc ar `.^`, nevis ar `.`. Parastā `.method` izpilda objekta metodi. Bet `.^method` izsauc metodi uz objekta **metaobjekta**. Tātad tā jautā par tipu, nevis darbojas kā tips.

Jūs jau esat redzējuši `.^name`, kas atgriež tipa nosaukumu:

```raku
say 42.^name; # Int
```

Citas metametodes aplūko tipa struktūru. `.^attributes` uzskaita tā atribūtus, un `.^find_method` pasaka, vai metode eksistē:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` atgriež _metožu atrisināšanas secību_. Tā ir tipu ķēde, ko Raku pēc kārtas pārmeklē, lai atrastu metodi. Tā ir klases mantošanas līnija:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` manto no `A`, un galu galā katrs tips manto no `Any` un `Mu`. Tāpēc Raku meklē `B` metodi tieši pa šo ceļu. Šīs metametodes pārvērš jūsu tipu struktūru par datiem. Par šiem datiem jūs varat jautāt izpildes laikā.

{% include nav.html %}
