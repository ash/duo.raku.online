---
title: 'Solutio: Stipendium incrementum'
---

{% include menu.html %}

Programma unum valorem in hash mutare debet. Novum valorem ei assignas. Hoc fere idem est ac cum variabili scalari.

## Codex

Hic est solutio:

```raku
my %employee =
    nomen-plenum => 'Eliza Vents',
    departmentum => 'Venditio',
    salarium => 3000;

my $auctus = 5; # in centesimis

%employee<salarium> *= (1 + $auctus / 100);
say "Novum salarium %employee<nomen-plenum>: %employee<salarium>";
```

🦋 Inveni codicem fontem in archivo [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Exitus

Curre programma. Cura ut calculi recti sint. Etiam cura ut centesimas recto modo convertas.

```console
$ raku exercises/associatives/salary-raise.raku
Novum salarium Eliza Vents: 3150
```

{% include nav.html %}
