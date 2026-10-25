---
title: Interpolatie van hashes
---

{% include menu.html %}

Je kunt hash-elementen interpoleren in strings met dubbele aanhalingstekens. Schrijf ze zoals je dat in het programma zelf doet: `%data<FR>`. Om de hele hash te interpoleren, voeg je een paar lege hoekige haken of accolades toe: `%data{}`. Het volgende programma laat zien hoe dat werkt:

```raku
my %data = FR => 'Parijs', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Of:
# say "%data{}";
```

Dit programma print de gegevens waar we om vroegen:

```console
$ raku t.raku
Parijs
FR	Parijs
IT	Rome
```

Let op: als je de hele hash print, kan de uitvoer meerdere regels lang zijn.

{% include nav.html %}
