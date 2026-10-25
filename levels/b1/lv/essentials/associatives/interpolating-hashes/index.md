---
title: Hashes interpolācija
---

{% include menu.html %}

Jūs varat interpolēt heša elementus dubultpēdiņu virknēs. Rakstiet tos tāpat kā pašā programmā: `%data<FR>`. Lai interpolētu visu hešu, pievienojiet tukšu leņķa iekavu vai figūriekavu pāri: `%data{}`. Šī programma parāda, kā tas darbojas:

```raku
my %data = FR => 'Parīze', IT => 'Roma';

say "%data<FR>";
say "%data<>";

# Vai arī:
# say "%data{}";
```

Šī programma izdrukā datus, kurus mēs pieprasījām:

```console
$ raku t.raku
Parīze
FR	Parīze
IT	Roma
```

Ņemiet vērā: kad jūs drukājat visu hešu, izvade var aizņemt vairākas rindas.

{% include nav.html %}
