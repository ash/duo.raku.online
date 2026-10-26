---
title: Ricerca nelle stringhe
---

{% include menu.html %}

Diversi metodi ti dicono cosa contiene una stringa.

Il metodo `contains` controlla se una stringa si trova in qualsiasi punto dentro un'altra:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

I metodi `starts-with` e `ends-with` controllano come inizia e come finisce una stringa:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Per trovare la posizione esatta di una sottostringa, usa `index`. Restituisce la posizione della prima corrispondenza, contando da zero:

```raku
say 'Raku'.index('k'); # 2
```

Se `index` non trova la sottostringa, restituisce `Nil` invece di un numero:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
