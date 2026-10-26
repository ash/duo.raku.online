---
title: 'Risinājums: Piespiest tūlītēju izvērtēšanu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Atrodiet programmu failā [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Izvade

```
True
False
True
```

## Komentāri

1. Diapazonu līdz `Inf` nevar aprēķināt visu uzreiz, tāpēc tas ir slinks. `.is-lazy` atgriež `True`.

1. Prefikss `eager` liek Raku izveidot sarakstu uzreiz. Tāpēc rezultāts vairs nav slinks. `.is-lazy` atgriež `False`. Tas ir tiešs pretstats saraksta atzīmēšanai ar `lazy`.

1. Neizmantojiet `eager` ar diapazonu, kam nav beigu. `eager 1 .. Inf` mēģina aprēķināt katru elementu uzreiz. Tāpēc programma vienkārši iekaras un izmanto arvien vairāk atmiņas, līdz to nogalina. `eager` ir drošs tikai ar sarakstiem, par kuriem jūs zināt, ka tie ir galīgi.

1. Darbojas arī otrādi. `lazy 1..3` atzīmē kā slinku pat īsu, galīgu diapazonu, tāpēc `.is-lazy` atgriež `True`. Prefikss uzstāda slinkuma karodziņu neatkarīgi no tā, cik mazs ir saraksts. Sarakstam nav jābūt bezgalīgam, lai tas būtu slinks.

{% include nav.html %}
