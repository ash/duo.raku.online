---
title: Item- en lijstcontext
translations_gpt: Item and list context
---

{% include menu.html %}

Er zijn nog twee contexten. Ze beslissen één ding. Is een waarde een **lijst** van meerdere waarden? Of is het één enkel **item**? De sigils `@` en `$` laten dit verschil zien.

In _lijstcontext_ wordt een array zijn losse elementen. Een `for`-lus zet zijn argument in lijstcontext. Dus gaat de lus langs elk element:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

In _itemcontext_ is dezelfde array één enkele waarde. De contextomzetter `$( … )` stelt itemcontext in. Nu ziet de lus maar één ding. Dus loopt hij één keer:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Itemcontext verklaart ook het volgende. Je wijst een array toe aan een scalar. De scalar krijgt de hele array als één item. Hij kopieert de elementen niet. De reden is dat `my $x = @a` de array `@a` in itemcontext zet. Let op: dit ene item kan een andere container zijn. En deze container kan veel items bevatten:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` is een scalaire container. Dus bewaart hij nu één enkel object. Dit object is een `Array`. Je kunt dit makkelijk controleren. Gebruik `$var` als een soort array-referentie. Zo heet dat in andere talen:

```raku
say $var[1]; # 2
```

De contextomzetter `@( … )` doet het tegenovergestelde. Hij stelt lijstcontext in.

Er is ook _sink-context_. In sink-context gebruikt niemand de waarde van een statement. Raku gooit de waarde gewoon weg. Een regel kan er bijvoorbeeld alleen zijn voor zijn neveneffect. Een neveneffect is een extra actie van de code, zoals afdrukken. Soms doet een waarde in sink-context niets nuttigs. Dan kan Raku je waarschuwen voor een "useless use". Dat is een handige hint. Je bent waarschijnlijk vergeten een resultaat te gebruiken.

De sigil, `$` of `@`, is eigenlijk een keuze van context. Soms heb je een andere context nodig. Dan veranderen de contextomzetters `$( )` en `@( )` hem.

{% include nav.html %}
