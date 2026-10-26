---
title: Basi numeriche
---

{% include menu.html %}

Puoi scrivere un intero anche in altre basi. Non deve essere per forza in base 10. La base 10 è il sistema decimale. Raku conosce le tre altre basi più comuni. Per queste non ti serve niente di più. Ogni base ha il suo prefisso:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

Nel codice puoi usare qualsiasi base. Il valore è sempre lo stesso intero. Cambia solo il modo di scriverlo.

Per qualsiasi altra base, usa la forma `:base<numero>`. Si chiama forma radice:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Puoi anche fare il contrario. Prendi un numero e scrivilo in un'altra base. Per farlo, chiama il metodo `base`. Dà una stringa di cifre:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
