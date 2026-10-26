---
title: Talstelsels
---

{% include menu.html %}

Je kunt een geheel getal ook in andere talstelsels schrijven. Het hoeft niet grondtal 10 te zijn. Grondtal 10 is het decimale stelsel. Raku kent de drie meest gebruikte andere talstelsels. Je hebt er niets extra voor nodig. Elk talstelsel heeft een eigen prefix:

```raku
say 0xFF;   # 255  — hexadecimaal (grondtal 16)
say 0b1010; # 10   — binair (grondtal 2)
say 0o17;   # 15   — octaal (grondtal 8)
```

Je kunt elk talstelsel in de code gebruiken. De waarde is altijd hetzelfde gehele getal. Alleen de manier van schrijven is anders.

Gebruik voor elk ander talstelsel de vorm `:base<number>`. Die heet de radix-vorm:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Je kunt ook de andere kant op gaan. Neem een getal en schrijf het in een ander talstelsel. Roep daarvoor de methode `base` aan. Die geeft een string van cijfers:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
