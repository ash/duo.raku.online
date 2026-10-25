---
title: Typen converteren met constructor vormen
---

{% include menu.html %}

Een vergelijkbare manier is om een nieuw object te maken van het type dat je nodig hebt. Daarvoor roep je de constructor aan, die dezelfde naam heeft als het type. Bijvoorbeeld:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Hier wordt een string met een drijvende-kommagetal erin omgezet naar een integer.

{% include nav.html %}
