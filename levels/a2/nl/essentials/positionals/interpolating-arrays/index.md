---
title: Interpolatie van arrays
---

{% include menu.html %}

Je kunt array-elementen interpoleren in strings met dubbele aanhalingstekens. Schrijf ze op dezelfde manier als in de programmacode: `@data[1]`. Om de hele array te interpoleren, voeg je een paar lege haakjes toe: `@data[]`. Dit programma laat zien hoe het werkt:

```raku
my @data = 10, 20, 30;

say "Eerste: @data[0], laatste: @data[1]";
say "Alle elementen: @data[]";
```

Het programma print de gegevens die we willen:

```console
$ raku t.raku 
Eerste: 10, laatste: 20
Alle elementen: 10 20 30
```

{% include nav.html %}
