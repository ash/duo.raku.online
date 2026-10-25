---
title: 'Risinājums: Satiksmes luksofori'
---

{% include menu.html %}

Šeit ir risinājuma ideja. Masīvs glabā četrus luksofora stāvokļus. Mēs ‘cikliski indeksējam’ šo masīvu:

```raku
my @lights = <yellow red yellow green>;
```

Vispirms skaitiet sekundes no starta. Izmantojiet šo skaitli tieši kā indeksu masīvā. Vēlāk skaitlis kļūst lielāks par 3. Tad jūs atgriežaties masīva sākumā. To dara modulo operators `%`. Masīva garums ir `@lights.elems`. Bet šeit jums nav jāizsauc `elems` metode. Masīvs ir `%` operands. Tāpēc Raku pārvērš masīva nosaukumu skaitlī. Šī konvertēšana dod elementu skaitu.

## Kods

Šeit ir risinājums:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Atrodiet programmu failā [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Izvade

Palaidiet programmu. Tad izmēģiniet programmā arī citas vērtības.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
