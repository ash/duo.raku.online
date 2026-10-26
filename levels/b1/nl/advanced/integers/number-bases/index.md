---
title: Talstelsels
---

{% include menu.html %}

In je code hoef je gehele getallen niet in het decimale stelsel te schrijven. Raku kent meteen de drie meest gebruikte andere talstelsels. Elk ervan heeft een eigen prefix:

```raku
say 0xFF;   # 255  — hexadecimaal (grondtal 16)
say 0b1010; # 10   — binair (grondtal 2)
say 0o17;   # 15   — octaal (grondtal 8)
```

Welk talstelsel je ook gebruikt in de code, de waarde is hetzelfde gehele getal. Alleen de manier waarop je het schrijft, is anders.

Voor alle andere talstelsels is er de radix-vorm `:base<number>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Om de andere kant op te gaan, roep je de methode `base` aan. Die schrijft een getal in een ander talstelsel en geeft een string van cijfers terug:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
