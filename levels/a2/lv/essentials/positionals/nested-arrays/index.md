---
title: Ligzdoti masīvi
---

{% include menu.html %}

Masīvs var saturēt jebkurus citus datus. Tas var saturēt pat citus masīvus. Tie ir ligzdoti masīvi. Ar kvadrātiekavām parādiet, kur katrs ligzdotais masīvs sākas un beidzas:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Jūs varat pievienot arī vēl vienu iekavu pāri. Tās ir ap ārējo, augstākā līmeņa masīvu. Nākamajā piemērā ir tā pati datu struktūra kā iepriekš.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Lai iegūtu iekšējo elementu, pievienojiet vairāk indeksu. Pievienojiet tik daudz, cik jums vajag. Ar katru kvadrātiekavu pāri jūs ejat vienu līmeni dziļāk:

```raku
say @table[0][3]; # Izdrukā 4
say @table[2][1]; # Izdrukā 200 
```

{% include nav.html %}
