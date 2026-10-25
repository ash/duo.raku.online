---
title: Ligzdoti masīvi
---

{% include menu.html %}

Masīvi var saturēt jebkurus citus datus, arī citus masīvus. Lai atzīmētu, kur katrs ligzdotais masīvs sākas un beidzas, izmantojiet kvadrātiekavas:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Jūs varat arī likt vēl vienu iekavu pāri ap augstākā līmeņa masīvu. Šis piemērs parāda to pašu datu struktūru kā iepriekšējais.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Lai iegūtu iekšējos elementus, pievienojiet tik daudz indeksu, cik jums vajag. Katrs kvadrātiekavu pāris jūs aizved vienu līmeni dziļāk struktūrā:

```raku
say @table[0][3]; # Izdrukā 4
say @table[2][1]; # Izdrukā 200 
```

{% include nav.html %}
