---
title: Sets, bags en mixes
translations_gpt:
---

{% include menu.html %}

Naast arrays en hashes heeft Raku een paar speciale containers voor verzamelingen van waarden. De eenvoudigste is de `Set`. Dat is een verzameling van _unieke_ waarden zonder vaste volgorde. Elke waarde zit in de set of niet, en herhaalde waarden worden genegeerd.

Je maakt een set met de `set`-routine. Als een waarde herhaald wordt, bewaart de set die maar één keer:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

We gaven vijf getallen mee, maar de set heeft maar drie elementen. Dat komt doordat `1` en `2` meer dan één keer voorkwamen.

De belangrijkste vraag die je aan een set stelt, is of een waarde erin zit. De operator `∈`, die je leest als "is een element van", geeft een Boolean terug:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Als je bij gewone ASCII wilt blijven, schrijf je dezelfde operator als `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Hierna zie je hoe je sets combineert. Je leert ook bags en mixes kennen, die nauwe familie van sets zijn.

{% include nav.html %}
