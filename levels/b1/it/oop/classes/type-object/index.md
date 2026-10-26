---
title: Oggetti di tipo e istanze
translations_gpt:
---

{% include menu.html %}

Il nome di una classe, come `Dog`, indica l'_oggetto di tipo_ della classe. L'oggetto di tipo rappresenta il tipo stesso. Non è un oggetto particolare di quel tipo. Un'_istanza_, che crei con `new`, è un oggetto vero.

Raku sa vedere la differenza fra i due. Il metodo `defined` restituisce `False` per un oggetto di tipo e `True` per un'istanza:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Un oggetto di tipo è considerato _non definito_, perché non contiene dati veri. Descrive solo un tipo. Un'istanza è _definita_, perché è un oggetto vero.

Con `WHAT`, entrambi mostrano lo stesso tipo. Hai già incontrato `WHAT` nella [sezione sui contenitori](/it/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku mostra un tipo tra parentesi, come in `(Dog)`. Quindi `Dog` e `Dog.new` hanno lo stesso tipo, `Dog`. Ma c'è una differenza. `Dog` è il tipo stesso, e `Dog.new` è un oggetto di quel tipo.

{% include nav.html %}
