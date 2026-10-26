---
title: Interi
---

{% include menu.html %}

Hai usato gli interi fin dall'inizio del corso. Gli interi sono numeri senza virgola. Questa sezione mostra alcune loro caratteristiche. All'inizio forse non noti queste caratteristiche.

La caratteristica più importante è la _precisione arbitraria_. Un intero in Raku non ha un numero fisso di byte. Così non va mai in overflow. Con l'overflow, un numero diventa troppo grande. Allora diventa sbagliato in silenzio. Con abbastanza memoria, un intero può essere grande quanto ti serve:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Questo valore è esatto. Non è arrotondato. Lo stesso vale quando moltiplichi numeri grandi. Per esempio, Raku trova il fattoriale esatto di 50:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

I numeri lunghi nel codice sono difficili da leggere. Per questo puoi dividere le cifre in gruppi con i trattini bassi. Il compilatore salta i trattini bassi:

```raku
say 1_000_000; # 1000000
```

I prossimi argomenti mostrano come scrivere gli interi in altre basi. La base 10 non è l'unica. Mostrano anche alcuni metodi utili per gli interi.

{% include nav.html %}
