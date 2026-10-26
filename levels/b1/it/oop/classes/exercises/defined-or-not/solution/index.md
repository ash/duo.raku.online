---
title: 'Soluzione: Definito o no'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Trova il programma nel file [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Output

```
False
False
True
True
```

## Commenti

1. Il ciclo passa per un misto di valori. Due sono oggetti di tipo, `Cat` e `Dog`, e due sono istanze, `Cat.new` e `Dog.new`.

1. Entrambi gli oggetti di tipo non sono definiti, quindi `defined` restituisce `False` per loro. Entrambe le istanze sono definite, quindi restituisce `True`. Conta dunque se un valore è un oggetto di tipo o un'istanza vera. La classe del valore non conta.

{% include nav.html %}
