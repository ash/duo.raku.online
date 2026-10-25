---
title: Leksiskā darbības joma
---

{% include menu.html %}

Koda bloks izveido leksisko darbības jomu. Ko tas nozīmē? Jūs izveidojat mainīgo blokā. Tas ir redzams šajā blokā. Tad programma iziet no bloka. Pēc tam mainīgais vairs nav redzams. Apskatiet piemēru:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Mainīgais `$x` tiek izveidots koda blokā. Pirmais `say $x` ir bloka iekšpusē. Mainīgais tur ir redzams. Tāpēc `say` izdrukā tā vērtību. Otrais `say $x` neizdodas. Ārpus bloka nosaukums `$x` nepastāv. Pēc bloka beigām programma to nezina. Programma nekompilējas. Jūs saņemat kļūdu:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
