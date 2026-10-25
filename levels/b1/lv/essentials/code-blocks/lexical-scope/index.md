---
title: Leksiskā darbības joma
---

{% include menu.html %}

Koda bloks izveido tā saukto leksisko darbības jomu. Ja jūs deklarējat mainīgo blokā, tas ir redzams bloka iekšpusē. Bet tas nav redzams pēc tam, kad programma iziet no bloka. Šeit ir piemērs:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Mainīgais `$x` tiek izveidots koda blokā. Pirmais `say $x` izdrukā tā vērtību, jo mainīgais ir redzams bloka iekšpusē. Otrais `say $x` neizdodas, jo nosaukums `$x` ārpus bloka nepastāv. Kad bloks ir beidzies, šis nosaukums nav zināms. Programma nekompilējas, un jūs saņemat kļūdu:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
