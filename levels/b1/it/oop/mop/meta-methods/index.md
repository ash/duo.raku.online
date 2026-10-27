---
title: Metametodi
translations_gpt:
---

{% include menu.html %}

Un _metametodo_ si chiama con `.^` invece che con `.`. Il normale `.method` esegue un metodo dell'oggetto. Ma `.^method` chiama un metodo sul **metaoggetto** dell'oggetto. Quindi chiede qualcosa sul tipo invece di agire come il tipo.

Hai già visto `.^name`, che restituisce il nome del tipo:

```raku
say 42.^name; # Int
```

Altri metametodi guardano la struttura di un tipo. `.^attributes` elenca i suoi attributi e `.^find_method` ti dice se un metodo esiste:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` restituisce il _method resolution order_. È la catena di tipi che Raku percorre, in ordine, per trovare un metodo. È la linea di ereditarietà di una classe:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` eredita da `A`, e alla fine ogni tipo eredita da `Any` e `Mu`. Quindi Raku cerca un metodo di un `B` proprio lungo quel percorso. Questi metametodi trasformano la struttura dei tuoi tipi in dati. Puoi interrogare questi dati a runtime.

{% include nav.html %}
