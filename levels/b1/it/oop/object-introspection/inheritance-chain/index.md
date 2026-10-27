---
title: La catena di ereditarietà
translations_gpt:
---

{% include menu.html %}

Se una classe eredita da un'altra, puoi chiedere tutta la sua catena di tipi. Il metametodo `.^mro` restituisce questa catena. Il nome sta per _method resolution order_. È l'ordine in cui Raku cerca un metodo.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Leggi l'elenco da sinistra. Un `Dog` è prima se stesso, poi un `Animal` (il suo genitore), e poi `Any` e `Mu`. Questi due tipi sono proprio in cima, e ogni oggetto Raku eredita da loro. Per una chiamata di metodo su un `Dog`, Raku percorre questo elenco da sinistra a destra. Usa il primo metodo adatto che trova. È proprio per questo che il metodo di una figlia sovrascrive il metodo della genitrice. La figlia viene prima nella catena.

Se una classe non ha un genitore che indichi tu, la catena è più corta. Contiene solo la classe stessa, seguita da `Any` e `Mu`.

{% include nav.html %}
