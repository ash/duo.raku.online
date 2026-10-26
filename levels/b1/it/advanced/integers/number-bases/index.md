---
title: Basi numeriche
---

{% include menu.html %}

Nel tuo codice non devi per forza scrivere gli interi nel sistema decimale. Raku conosce subito le tre altre basi più comuni. Ognuna ha il suo prefisso:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

Qualunque base usi nel codice, il valore è lo stesso intero. Cambia solo il modo in cui lo scrivi.

Per tutte le altre basi c'è la forma radice `:base<numero>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Per fare il contrario, chiama il metodo `base`. Scrive un numero in un'altra base e restituisce una stringa di cifre:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
