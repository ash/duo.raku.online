---
title: Operazioni sui set
---

{% include menu.html %}

Puoi combinare i set con le solite operazioni della teoria degli insiemi. La teoria degli insiemi è una parte della matematica. Ogni operatore ha un simbolo Unicode. Ha anche un modo di scriverlo in ASCII. Usa quello che ti piace di più.

L'_unione_ è `∪`, o `(|)` in ASCII. Prende tutti i valori dei due set:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Il valore `3` è in tutti e due i set. Quindi l'unione ha cinque elementi distinti: `1, 2, 3, 4, 5`.

L'_intersezione_ è `∩`, o `(&)` in ASCII. Tiene solo i valori che sono in tutti e due i set:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — nota che i set non sono ordinati
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Qui l'intersezione ha `2` e `3`. Questi valori sono in tutti e due i set. Un set non ha un ordine. Così nell'output i due elementi possono venire in qualsiasi ordine.

Anche queste operazioni danno un set. Così puoi fargli le stesse domande. Quanti elementi ha? Un certo valore è nel set?

{% include nav.html %}
