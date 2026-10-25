---
title: Interpolatie van hashes
---

{% include menu.html %}

Je kunt hash-elementen interpoleren in strings met dubbele aanhalingstekens. Schrijf ze op dezelfde manier als in de code van het programma: `%data<FR>`. Je kunt ook de hele hash interpoleren. Voeg daarvoor lege hoekige haken of lege accolades toe: `%data{}`. Dit programma laat zien hoe het werkt:

```raku
my %data = FR => 'Parijs', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Of:
# say "%data{}";
```

Het programma print de gegevens die we willen:

```console
$ raku t.raku
Parijs
FR	Parijs
IT	Rome
```

Let op: een hele hash kan meer dan één regel printen.

{% include nav.html %}
