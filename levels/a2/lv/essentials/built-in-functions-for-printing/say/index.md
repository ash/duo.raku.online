---
title: '`say`'
---

{% include menu.html %}

Iebūvētā rutīna `say` dara četras lietas:

1. Izsauc `gist` metodi uz tās argumentiem.
1. Pievieno jaunas rindas rakstzīmi.
1. Pārvērš rezultātu uz UTF-8.
1. Nosūta to uz `STDOUT` plūsmu.

Lietotājam tas ir vienkārši. `say` izdrukā mainīgā vērtību terminālā. Pēc tam tā pievieno jaunu rindu.

Pirmais solis prasa nelielu paskaidrojumu. Katram iebūvētajam datu tipam ir `gist` metode. Veseli skaitļi un virknes ir šādu tipu piemēri. Šiem vienkāršajiem tipiem `gist` atgriež objektu kā viegli lasāmu vērtību.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Daži dati ir sarežģītāki, piemēram, masīvi vai vārdnīcas. Šādiem datiem `gist` pievieno nedaudz formatējuma.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Jūs varat izsaukt `say` kā funkciju. Jūs varat to izsaukt arī kā metodi:

```raku
say 42;
say(42);
42.say;
```

Jūs varat nodot `say` vairāk nekā vienu argumentu. Tā savieno izvades daļas. Starp tām nav atstarpju.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
