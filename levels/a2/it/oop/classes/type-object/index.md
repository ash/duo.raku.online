---
title: Oggetti di tipo e istanze
translations_gpt:
---

{% include menu.html %}

Puoi scrivere il nome di una classe, per esempio `Dog`. Questo nome indica l'_oggetto di tipo_ della classe. L'oggetto di tipo rappresenta il tipo stesso. Non è uno degli oggetti di questo tipo. Un'_istanza_ è diversa. La crei con `new`. È un oggetto vero.

Raku vede la differenza tra i due. Il metodo `defined` restituisce `False` per un oggetto di tipo. Restituisce `True` per un'istanza:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Un oggetto di tipo non ha dati veri. Descrive solo un tipo. Così Raku dice che è _non definito_. Un'istanza è un oggetto vero. Quindi è _definita_.

`WHAT` mostra lo stesso tipo per tutti e due. Hai visto `WHAT` nella [sezione sui contenitori](/it/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku mostra un tipo tra parentesi tonde, come `(Dog)`. Quindi `Dog` e `Dog.new` hanno lo stesso tipo, `Dog`. Ma sono cose diverse. `Dog` è il tipo stesso. `Dog.new` è un oggetto di questo tipo.

{% include nav.html %}
