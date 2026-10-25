---
title: 'Risinājums: Satiksmes luksofori'
---

{% include menu.html %}

Risinājuma ideja ir ‘cikliski indeksēt’ masīvu. Masīvs glabā četrus luksofora stāvokļus:

```raku
my @lights = <yellow red yellow green>;
```

Sākumā sekunžu skaitu kopš starta izmanto tieši kā indeksu. Kad tas ir lielāks par 3, jūs atgriežaties masīva sākumā. To dara modulo operators `%`. Masīva garums ir `@lights.elems`. Bet ar `%` jums nav jāizsauc `elems` metode. Masīvs ir `%` operands, tāpēc tā nosaukums tiek pārvērsts skaitlī. Šī konvertēšana ir veidota tā, lai dotu elementu skaitu.

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

Palaidiet programmu. Izmēģiniet programmā arī citas vērtības.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
