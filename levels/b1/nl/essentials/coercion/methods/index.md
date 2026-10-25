---
title: Typen converteren met type coercie methoden
---

{% include menu.html %}

Om een waarde naar een ander type om te zetten, of te _forceren_, roep je een methode aan. Die methode heeft dezelfde naam als het datatype. Zet bijvoorbeeld een string om naar een integer:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

In veel gevallen hoef je waarden niet zelf om te zetten. Raku doet dat werk voor je. De volgende code werkt correct en zoals je zou verwachten:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

De variabelen `$a` en `$b` bevatten strings. Maar ze worden gebruikt in een berekening met `+`. Op dat moment worden beide strings omgezet naar integers, dus krijgt `$c` ook een integer. In de laatste regel wordt de variabele met de integer geïnterpoleerd in een string. Raku doet wat nodig is om het getal als cijfertekens te tonen.

{% include nav.html %}
