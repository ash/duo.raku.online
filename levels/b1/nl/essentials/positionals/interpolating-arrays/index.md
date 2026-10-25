---
title: Interpolatie van arrays
---

{% include menu.html %}

Je kunt array-elementen interpoleren in strings met dubbele aanhalingstekens. Schrijf ze zoals je dat in het programma zelf doet: `@data[1]`. Om de hele array te interpoleren, voeg je een paar lege haakjes toe: `@data[]`. Het volgende programma laat zien hoe dit werkt:

```raku
my @data = 10, 20, 30;

say "Eerste: @data[0], laatste: @data[1]";
say "Alle elementen: @data[]";
```

Dit programma print de gegevens waar we om vroegen:

```console
$ raku t.raku 
Eerste: 10, laatste: 20
Alle elementen: 10 20 30
```

{% include nav.html %}
