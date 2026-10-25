---
title: '`say`'
---

{% include menu.html %}

Lūk, ko dara iebūvētā rutīna `say`:

1. Izsauc `gist` metodi uz tās argumentiem.
1. Pievieno jaunas rindas rakstzīmi.
1. Pārvērš rezultātu uz UTF-8.
1. Nosūta to uz `STDOUT` plūsmu.

Lietotājam tas izskatās vienkārši. `say` tikai izdrukā mainīgā saturu terminālā un pievieno jaunu rindu.

Pirmais solis prasa nelielu paskaidrojumu. Katram iebūvētajam datu tipam, piemēram, veseliem skaitļiem vai virknēm, ir `gist` metode. Šādiem vienkāršiem tipiem tā atgriež vērtību, kas attēlo objektu. Cilvēki šo vērtību var viegli izlasīt.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Masīvi un vārdnīcas ir sarežģītāku datu piemēri. Tiem `gist` metode pievieno nedaudz formatējuma.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Jūs varat izsaukt `say` gan kā funkciju, gan kā metodi:

```raku
say 42;
say(42);
42.say;
```

Jūs varat nodot `say` vairākus argumentus. Tā savieno izvades daļas bez atstarpēm starp tām.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
