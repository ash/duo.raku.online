---
title: Tipu konvertēšana, izmantojot konstruktoru formas
---

{% include menu.html %}

Līdzīgs veids ir izveidot jaunu vajadzīgā tipa objektu. Lai to izdarītu, jūs izsaucat tā konstruktoru, kuram ir tāds pats nosaukums kā tipam. Piemēram:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Šeit virkne ar peldošā punkta skaitli tiek konvertēta uz veselu skaitli.

{% include nav.html %}
