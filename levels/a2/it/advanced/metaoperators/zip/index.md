---
title: Meta-operatori zip
---

{% include menu.html %}

Il meta-operatore zip `Z` prende due liste, o anche di più. Mette insieme i loro elementi per posizione:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Il risultato è una lista di gruppi. Il primo gruppo ha il primo elemento di ogni lista. Il secondo gruppo ha il secondo elemento di ogni lista, e così via.

C'è anche un modo più intelligente. Puoi usare `Z` con un operatore. Allora l'operatore lavora su ogni coppia. Per esempio, `Z+` somma gli elementi nelle stesse posizioni:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Qui il meta-operatore zip lavora con l'operatore `+`. Calcola `1 + 10`, `2 + 20` e `3 + 30`. Nello stesso modo, `Z*` moltiplica gli elementi nelle stesse posizioni:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

E `Z~` unisce le stringhe nelle stesse posizioni:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
