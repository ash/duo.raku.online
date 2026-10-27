---
title: La catena di ereditarietà
translations_gpt:
---

{% include menu.html %}

Una classe può ereditare da un'altra classe. Allora puoi chiedere tutta la catena di tipi. La classe si basa su questi tipi. Il metametodo `.^mro` restituisce questa catena. Il nome vuol dire _method resolution order_. Raku cerca un metodo in questo ordine.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Leggi l'elenco da sinistra. Prima, un `Dog` è se stesso. Poi è un `Animal`, il suo genitore. Poi è `Any` e `Mu`. Ogni oggetto Raku eredita da questi due tipi. Sono proprio in cima. Quando chiami un metodo su un `Dog`, Raku cerca in questo elenco. Va da sinistra a destra. Usa il primo metodo che corrisponde. Questo spiega la sovrascrittura. La figlia viene prima nella catena. Quindi il suo metodo vince sul metodo della genitrice.

A volte una classe non ha un genitore con `is`. Allora la catena è più corta. Contiene solo la classe stessa, e poi `Any` e `Mu`.

{% include nav.html %}
