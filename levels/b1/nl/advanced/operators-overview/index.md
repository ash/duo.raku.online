---
title: Overzicht van operatorgedrag
translations_gpt:
---

{% include menu.html %}

Als een expressie meerdere operatoren heeft, moet Raku kiezen in welke volgorde ze gebruikt worden. Twee regels bepalen dit: _voorrang_ en _associativiteit_.

## Voorrang

Voorrang bepaalt welke operator sterker is, dat wil zeggen welke operator sterker bindt. Vermenigvuldiging heeft een hogere voorrang dan optelling, dus die wordt eerst gedaan:

```raku
say 2 + 3 * 4; # 14
```

Raku leest de expressie als `2 + (3 * 4)`, dus het resultaat is `14` en niet `20`. Je kunt altijd haakjes gebruiken om een andere volgorde te krijgen:

```raku
say (2 + 3) * 4; # 20
```

## Associativiteit

Associativiteit bepaalt de volgorde als operatoren _dezelfde_ voorrang hebben. Aftrekken is links-associatief, en dat betekent dat het vanaf links groepeert:

```raku
say 8 - 3 - 2; # 3
```

Dit is `(8 - 3) - 2`, wat `3` geeft. Machtsverheffing is daarentegen rechts-associatief:

```raku
say 2 ** 3 ** 2; # 512
```

Hier wordt de expressie gegroepeerd als `2 ** (3 ** 2)`. Dat is `2 ** 9`, wat `512` geeft.

## Geschakelde vergelijkingen

Vergelijkingsoperatoren kunnen _geschakeld_ worden. Dit leest natuurlijk en doet wat je vanuit de wiskunde zou verwachten:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

De middelste waarde wordt vergeleken met de waarden aan beide kanten ervan. `1 < 2 < 3` is dus waar, omdat zowel `1 < 2` als `2 < 3` waar zijn.

{% include nav.html %}
