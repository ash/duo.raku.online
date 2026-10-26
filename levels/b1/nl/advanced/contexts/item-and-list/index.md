---
title: Item- en lijstcontext
translations_gpt: Item and list context
---

{% include menu.html %}

Nog twee contexten bepalen of iets een **lijst** of een enkel **item** is. Een lijst heeft meerdere waarden. De `@`- en `$`-sigils zijn gebaseerd op dit verschil.

In _lijstcontext_ spreidt een array zich uit in zijn elementen. Een `for`-lus zet zijn argument in lijstcontext, dus hij gaat langs elk element:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

In _itemcontext_ gedraagt dezelfde array zich als één enkele waarde. De `$( … )`-contextomzetter stelt itemcontext in. Dus ziet de lus nu maar één ding en loopt hij één keer:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Dit verklaart wat er gebeurt als je een array aan een scalar toewijst. De array wordt verpakt in een enkel item, en zijn elementen worden niet gekopieerd. De reden is dat `my $x = @a` de array `@a` in itemcontext zet. Let op: dit enkele item kan een andere container zijn met veel items erin:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

De variabele `$var` is een scalaire container, dus hij bevat nu een enkel object. Dit object is een `Array`. Je kunt dit eenvoudig bewijzen. Gebruik `$var` als een soort array-referentie, zoals andere talen het zouden noemen:

```raku
say $var[1]; # 2
```

Zijn partner, de `@( … )`-contextomzetter, doet het tegenovergestelde en stelt lijstcontext in.

Er is ook _sink-context_. Dit is de context van een statement waarvan de waarde wordt weggegooid. Een regel kan er bijvoorbeeld alleen zijn vanwege zijn neveneffect. Soms doet een waarde in sink-context niets nuttigs. Dan kan Raku waarschuwen voor een "useless use". Dat is een handige hint dat je vergeten bent een resultaat te gebruiken.

Als je een sigil kiest, `$` of `@`, kies je eigenlijk een context. Waar nodig kun je die veranderen met de contextomzetters `$( )` en `@( )`.

{% include nav.html %}
