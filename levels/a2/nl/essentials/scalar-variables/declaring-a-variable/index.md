---
title: Declareren van een variabele
---

{% include menu.html %}

Je moet een variabele aankondigen voordat je hem gebruikt. Raku heeft hier speciale woorden voor. Ze heten _declarators_. Om een variabele te declareren, gebruik je `my`, zo:

```raku
my $name;
```

Nu heb je een nieuwe variabele. Hij heeft nog geen waarde. Maar de compiler kent zijn naam al. Later gebruikt het programma dezelfde naam weer. Dan weet de compiler welke variabele het is.

## Meer dan één variabele

Eén `my` kan twee of meer variabelen declareren:

```raku
my ($x, $y);
```

{% include nav.html %}
