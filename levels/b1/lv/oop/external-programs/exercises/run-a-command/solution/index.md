---
title: 'Risinājums: Palaidiet komandu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `run` palaiž `echo` tieši un padod katru virkni kā atsevišķu argumentu. Bez `:out` programmas izvade iet tieši uz ekrānu.

1. Arguments nonāk pie `echo` tieši tā, kā uzrakstīts. `$HOME` tiek izdrukāts tāds, kāds tas ir, nevis aizstāts ar jūsu mājas direktoriju. Tas ir tāpēc, ka nav čaulas, kas to aizstātu. Tieši tāpēc `run` ir drošais noklusējums. Ja to pašu komandu dotu `shell`, tā varētu darboties pavisam citādi.

1. Lai tiešām izdrukātu mājas direktoriju, ļaujiet čaulai aizstāt mainīgo. `shell 'echo home: $HOME'` izdrukā kaut ko līdzīgu `home: /home/anna`. Paturiet vienpēdiņas arī Raku pusē. Dubultpēdiņās likts `"$HOME"` radītu problēmu. Pats Raku mēģinātu ielikt virknē mainīgo ar nosaukumu `$HOME`. Tas notiktu vēl pirms `echo` palaišanas.

{% include nav.html %}
