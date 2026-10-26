---
title: Overzicht van operatorgedrag
translations_gpt:
---

{% include menu.html %}

Een expressie kan meerdere operatoren hebben. Dan moet Raku de volgorde kiezen. Welke operator komt eerst? Twee regels bepalen dit: _voorrang_ en _associativiteit_.

## Voorrang

Voorrang bepaalt welke operator sterker is. De sterkere operator neemt eerst zijn operanden. Vermenigvuldigen heeft een hogere voorrang dan optellen. Daarom komt het vermenigvuldigen eerst:

```raku
say 2 + 3 * 4; # 14
```

Raku leest de expressie als `2 + (3 * 4)`. Het resultaat is `14`, niet `20`. Je kunt altijd haakjes toevoegen. Die geven een andere volgorde:

```raku
say (2 + 3) * 4; # 20
```

## Associativiteit

Sommige operatoren hebben _dezelfde_ voorrang. Dan bepaalt associativiteit de volgorde. Aftrekken is links-associatief. Raku groepeert het dus vanaf links:

```raku
say 8 - 3 - 2; # 3
```

Dit is `(8 - 3) - 2`. Het resultaat is `3`. Maar machtsverheffen, de operator `**`, is rechts-associatief:

```raku
say 2 ** 3 ** 2; # 512
```

Hier groepeert Raku de expressie als `2 ** (3 ** 2)`. Dat is `2 ** 9`, en het resultaat is `512`.

## Geschakelde vergelijkingen

Je kunt vergelijkingsoperatoren _schakelen_. Dan staan ze na elkaar. Zulke code leest makkelijk. Het werkt zoals in de wiskunde:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku vergelijkt de middelste waarde met de twee waarden ernaast. `1 < 2 < 3` is waar. Dat komt doordat `1 < 2` waar is, en `2 < 3` ook waar is.

{% include nav.html %}
