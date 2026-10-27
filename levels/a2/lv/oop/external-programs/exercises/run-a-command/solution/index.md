---
title: 'Risinājums: Palaidiet komandu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Atrodiet programmu failā [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Izvade

```
home: $HOME
```

## Komentāri

1. `run` palaiž `echo` tieši. Tas padod katru virkni kā atsevišķu argumentu. Šeit nav `:out`. Tāpēc programmas izvade iet tieši uz ekrānu.

1. Arguments nonāk pie `echo` tieši tā, kā jūs to uzrakstījāt. Tāpēc `echo` izdrukā `$HOME` tādu, kāds tas ir. Nekas to neaizstāj ar jūsu mājas direktoriju. Tas ir tāpēc, ka čaulas nav. Čaula to aizstātu. Tāpēc `run` ir drošā noklusējuma izvēle. Ar `shell` tā pati komanda var strādāt pavisam citādi.

1. Vai jūs tiešām gribat izdrukāt mājas direktoriju? Tad ļaujiet čaulai aizstāt mainīgo. `shell 'echo home: $HOME'` izdrukā kaut ko līdzīgu `home: /home/anna`. Raku kodā arī paturiet vienpēdiņas. Ar dubultpēdiņām, `"$HOME"`, ir problēma. Pats Raku mēģina ielikt virknē savu mainīgo `$HOME`. Tas notiek pirms `echo` vispār sāk darbu.

{% include nav.html %}
