---
title: Vietējie mainīgie
---

{% include menu.html %}

Tagad jūs izveidojat mainīgo globālajā apjomā. Jūs to izveidojat arī lokāli, bloka iekšpusē. Kas tad notiek?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Tagad programmā ir divi mainīgie. Tiem ir vienāds nosaukums. Bet tie ir dažādi mainīgie. Globālajā apjomā katrs `$x` ir globālais mainīgais. Bloka iekšpusē `$x` ir lokāls mainīgais. Tas nav globālais `$x`. Programma izdrukā divas dažādas vērtības:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
