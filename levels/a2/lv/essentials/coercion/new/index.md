---
title: Tipu konvertēšana, izmantojot konstruktoru formas
---

{% include menu.html %}

Ir līdzīgs veids. Jūs varat izveidot jaunu vajadzīgā tipa objektu. Lai to izdarītu, izsauciet tipa konstruktoru. Konstruktors izveido jaunus objektus. Tā nosaukums ir tāds pats kā tipa nosaukums. Piemēram:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Šeit virknē ir peldošā punkta skaitlis. Raku to konvertē uz veselu skaitli.

{% include nav.html %}
