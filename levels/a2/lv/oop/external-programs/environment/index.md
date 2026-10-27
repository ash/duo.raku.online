---
title: Vide
translations_gpt:
---

{% include menu.html %}

Katra programma sāk darbu ar _vides mainīgo_ kopu. Katrs no tiem ir vērtība ar nosaukumu. Daži piemēri ir `HOME`, `PATH` un `USER`. Operētājsistēma dod šīs vērtības programmai. Raku jūs tās atrodat dinamiskajā jauktenī `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Vides mainīgo jūs nolasāt pēc tā nosaukuma. Lietojiet nosaukumu kā atslēgu jauktenī `%*ENV`. `%*ENV` ir parasts jauktenis. Tāpēc jūs varat arī pārbaudīt, vai mainīgais ir uzstādīts. Jūs pat varat to mainīt programmām, ko palaižat:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Jūs varat uzstādīt atslēgu jauktenī `%*ENV`. Tad atslēga kļūst par vides daļu. Tagad jūs palaižat programmu ar `run` vai `shell`. Šī programma ir jūsu programmas bērns. Katra bērnprogramma saņem to pašu vidi. Tā jūs nododat iestatījumus tālāk bērnprogrammai:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Jūsu programma uzstāda mainīgo *pirms* tā palaiž bērnu. Šeit `run` palaiž čaulu kā bērnu. Čaula ir programma, kas nolasa komandas un tās izpilda. Šai čaulai savā vidē jau ir `GREETING`. Tāpēc tā var izdrukāt vērtību ar `echo`. Šādi jūs varat uzstādīt jebkuru mainīgo. Tad tas sasniedz katru programmu, ko jūs palaižat vēlāk.

Tvigils `*` jums pasaka, ka `%*ENV` ir dinamisks mainīgais. Tvigils ir zīme aiz sigila. Arī `$*OUT` ir dinamisks mainīgais. Jūs to redzējāt daļā par ievadi un izvadi. Daži citi mainīgie ar zvaigznīti jums stāsta par programmu, kas darbojas. `@*ARGS` satur komandrindas argumentus. Tās ir vērtības aiz programmas nosaukuma komandā. `$*PROGRAM-NAME` ir paša skripta nosaukums. Kopā šie mainīgie programmai pasaka, kā tā tika palaista.

{% include nav.html %}
