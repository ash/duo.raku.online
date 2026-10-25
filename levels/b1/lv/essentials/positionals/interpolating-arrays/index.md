---
title: Masīvu interpolācija
---

{% include menu.html %}

Masīva elementus var interpolēt dubultpēdiņu virknēs. Rakstiet tos tāpat kā pašā programmā: `@data[1]`. Lai interpolētu visu masīvu, pievienojiet tukšu iekavu pāri: `@data[]`. Nākamā programma parāda, kā tas darbojas:

```raku
my @data = 10, 20, 30;

say "Pirmais: @data[0], pēdējais: @data[1]";
say "Visi elementi: @data[]";
```

Šī programma izdrukā datus, ko mēs prasījām:

```console
$ raku t.raku 
Pirmais: 10, pēdējais: 20
Visi elementi: 10 20 30
```

{% include nav.html %}
