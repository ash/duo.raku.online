---
title: Meta-operatori zip
---

{% include menu.html %}

Il meta-operatore zip `Z` prende due o più liste. Accoppia i loro elementi per posizione:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Il risultato è una lista di gruppi. Il primo gruppo contiene il primo elemento di ogni lista. Il gruppo successivo contiene i secondi elementi, e così via.

In modo ancora più intelligente, puoi combinare `Z` con un operatore che lavora su ogni coppia. Per esempio, `Z+` somma gli elementi posizione per posizione:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Qui il meta-operatore zip avvolge l'operatore `+`. Calcola `1 + 10`, `2 + 20` e `3 + 30`. Allo stesso modo, `Z*` moltiplica gli elementi corrispondenti:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

E `Z~` unisce le stringhe corrispondenti:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
