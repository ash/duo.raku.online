---
title: Vide
translations_gpt:
---

{% include menu.html %}

Katra programma sāk darbu ar _vides mainīgo_ kopu. Tās ir vērtības ar nosaukumiem, piemēram, `HOME`, `PATH` vai `USER`, ko dod operētājsistēma. Raku tās ir dinamiskajā jauktenī `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Lai nolasītu vides mainīgo, jūs lietojat tā nosaukumu kā atslēgu jauktenī `%*ENV`. Tā kā `%*ENV` ir parasts jauktenis, jūs varat arī pārbaudīt, vai mainīgais ir uzstādīts. Jūs varat arī to mainīt programmām, ko palaižat:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Kad jūs uzstādāt atslēgu jauktenī `%*ENV`, tā kļūst par vides daļu. Katra programma, ko pēc tam palaižat ar `run` vai `shell`, arī saņem šo vidi. Tā jūs nododat iestatījumus tālāk bērnprogrammai:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Mainīgais tiek uzstādīts jūsu programmas vidē *pirms* bērna palaišanas. Tāpēc čaulai, ko palaiž `run`, savā vidē jau ir `GREETING`. Tā var izdrukāt vērtību atpakaļ ar `echo`. Katrs mainīgais, ko šādi uzstādāt, sasniedz katru programmu, ko palaižat vēlāk.

Tvigils `*` rāda, ka `%*ENV` ir dinamisks mainīgais. Tāds ir arī `$*OUT`, ko redzējāt daļā par ievadi un izvadi. Daži citi mainīgie ar zvaigznīti apraksta pasauli, kurā programma darbojas. `@*ARGS` satur komandrindas argumentus, un `$*PROGRAM-NAME` ir paša skripta nosaukums. Kopā tie palīdz programmai saprast situāciju, kurā tā tika palaista.

{% include nav.html %}
