---
title: Masīvu interpolācija
---

{% include menu.html %}

Jūs varat interpolēt masīva elementus dubultpēdiņu virknēs. Rakstiet tos tāpat kā programmas kodā: `@data[1]`. Lai interpolētu visu masīvu, pievienojiet tukšu iekavu pāri: `@data[]`. Šī programma parāda, kā tas strādā:

```raku
my @data = 10, 20, 30;

say "Pirmais: @data[0], pēdējais: @data[1]";
say "Visi elementi: @data[]";
```

Programma izdrukā vajadzīgos datus:

```console
$ raku t.raku 
Pirmais: 10, pēdējais: 20
Visi elementi: 10 20 30
```

{% include nav.html %}
