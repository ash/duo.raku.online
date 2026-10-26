---
title: Sets, bags en mixes
translations_gpt:
---

{% include menu.html %}

Raku heeft arrays en hashes. Het heeft ook een paar speciale containers voor groepen waarden. De eenvoudigste is de `Set`. De waarden ervan zijn _uniek_, dus elke waarde is anders dan de andere. De waarden in een set hebben geen volgorde. Een waarde zit in de set, of niet. Als een waarde twee keer voorkomt, negeert de set de tweede.

Een set maak je met de `set`-routine. Waarden die vaker voorkomen, worden één waarde:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

We geven de set vijf getallen. Maar hij heeft maar drie elementen. Dat komt doordat `1` en `2` meer dan één keer voorkomen.

Meestal stel je een set één hoofdvraag. Zit een waarde in de set? De operator `∈` geeft het antwoord. Je leest `∈` als "is een element van". Hij geeft een Boolean terug, `True` of `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Misschien wil je alleen gewone ASCII-tekens gebruiken. Schrijf dezelfde operator dan als `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

De volgende onderwerpen laten zien hoe je sets combineert. Ze laten ook bags en mixes zien. Bags en mixes zijn nauwe familie van sets.

{% include nav.html %}
