---
title: Metametodi
translations_gpt:
---

{% include menu.html %}

Chiami un _metametodo_ con `.^`, non con `.`. Un `.method` normale esegue un metodo dell'oggetto. Un `.^method` è diverso. Chiama un metodo del **metaoggetto** dell'oggetto. Un metaoggetto è un oggetto che descrive un tipo. Quindi la chiamata chiede qualcosa sul tipo. Non agisce come il tipo.

Conosci già `.^name`. Restituisce il nome del tipo:

```raku
say 42.^name; # Int
```

Altri metametodi mostrano come è fatto un tipo. `.^attributes` elenca i suoi attributi. `.^find_method` ti dice se un metodo esiste:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` restituisce il _method resolution order_. È una catena di tipi. Raku cerca un metodo in ognuno di loro, in questo ordine. È la linea di ereditarietà di una classe:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` eredita da `A`. Alla fine, ogni tipo eredita da `Any` e `Mu`. Chiami un metodo su un `B`. Allora Raku lo cerca proprio lungo questo percorso. Questi metametodi trasformano i tuoi tipi in dati. Questi dati mostrano come sono fatti i tipi. Puoi fare domande su di loro mentre il programma gira.

{% include nav.html %}
