---
title: Hashes interpolācija
---

{% include menu.html %}

Jūs varat interpolēt heša elementus dubultpēdiņu virknēs. Rakstiet tos tāpat kā programmas kodā: `%data<FR>`. Jūs varat interpolēt arī visu hešu. Šim nolūkam pievienojiet tukšas leņķa iekavas vai tukšas figūriekavas: `%data{}`. Šī programma parāda, kā tas darbojas:

```raku
my %data = FR => 'Parīze', IT => 'Roma';

say "%data<FR>";
say "%data<>";

# Vai arī:
# say "%data{}";
```

Programma izdrukā datus, kurus mēs gribam:

```console
$ raku t.raku
Parīze
FR	Parīze
IT	Roma
```

Ņemiet vērā, ka viss hešs var aizņemt vairāk nekā vienu rindu.

{% include nav.html %}
