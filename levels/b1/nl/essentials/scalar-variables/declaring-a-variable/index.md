---
title: Declareren van een variabele
---

{% include menu.html %}

Voordat je een variabele gebruikt, moet je hem aankondigen. Raku heeft hier speciale woorden voor, de _declarators_. Om een variabele te declareren, schrijf je `my`, zoals hier:

```raku
my $name;
```

Met deze regel heb je een nieuwe variabele gemaakt, die nog geen waarde heeft. Maar de compiler kent hem al. Als dezelfde naam later in het programma staat, herkent de compiler hem.

## Meer dan één variabele

Je kunt twee of meer variabelen declareren met één `my` declarator:

```raku
my ($x, $y);
```

{% include nav.html %}
