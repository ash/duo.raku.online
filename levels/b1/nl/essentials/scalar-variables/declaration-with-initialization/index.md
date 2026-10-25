---
title: Declaratie met initialisatie
---

{% include menu.html %}

Soms weet je de waarde al wanneer je een variabele maakt. Dan kun je beide in één instructie doen, en dat bespaart een regel code:

```raku
my $name = 'Anna';
say $name;
```

## Meerdere variabelen

Om meerdere variabelen te maken en er waarden aan toe te wijzen, gebruik je deze vorm:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
