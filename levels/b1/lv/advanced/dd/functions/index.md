---
title: Funkciju parakstu izgūšana
translations_gpt:
---

{% include menu.html %}

Jūs varat izsaukt kailu `dd` bez argumentiem apakšprogrammas iekšienē. Tad tā izdrukā šīs apakšprogrammas parakstu. Tas ir tās nosaukums un parametru saraksts, ja tādi ir. Aplūkojiet šo piemēru ar divām apakšprogrammām:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

Programma izdrukā parakstus, nevis vērtības:

```console
sub f1()
sub f2($x)
```

Tas ir īpaši noderīgi ar multifunkcijām, jo tas parāda, kurš variants tiešām tika izsaukts:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Katru reizi izvade parāda atbilstošo variantu:

```console
sub g()
sub g($x)
```

{% include nav.html %}
