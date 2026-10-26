---
title: Ricerca nelle stringhe
---

{% include menu.html %}

Alcuni metodi ti dicono cosa c'è dentro una stringa.

Il metodo `contains` controlla se una stringa è dentro un'altra stringa. Può essere in qualsiasi punto:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Il metodo `starts-with` controlla l'inizio di una stringa. Il metodo `ends-with` controlla la fine:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Ti serve la posizione esatta di una parte di una stringa? Allora usa `index`. Restituisce la posizione della prima corrispondenza. Conta da zero:

```raku
say 'Raku'.index('k'); # 2
```

A volte `index` non trova la parte. Allora restituisce `Nil`, non un numero:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
