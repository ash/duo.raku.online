---
title: Funkciju parakstu izgūšana
translations_gpt:
---

{% include menu.html %}

Dažreiz jūs izsaucat `dd` bez argumentiem apakšprogrammas iekšā. Tad `dd` izdrukā apakšprogrammas parakstu. Tas ir tās nosaukums un parametri, ja tādi ir. Aplūkojiet šo piemēru ar divām apakšprogrammām:

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

Programma izdrukā parakstus. Tā neizdrukā nevienu vērtību:

```console
sub f1()
sub f2($x)
```

Tas ir ļoti noderīgi ar multifunkcijām. Tās ir vairākas funkcijas ar vienu nosaukumu. Šeit `dd` pasaka, kuru variantu programma tiešām izsauc:

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

Katru reizi izvade nosauc variantu, kas der:

```console
sub g()
sub g($x)
```

{% include nav.html %}
