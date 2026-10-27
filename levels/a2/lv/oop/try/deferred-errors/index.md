---
title: Ne katra kļūda parādās uzreiz
translations_gpt:
---

{% include menu.html %}

Izņēmums ir kļūdas veids. Parasti izmests izņēmums uzreiz aptur programmu. Jūs to noķerat ar `try`. Bet dažas kļūdas tikai izskatās liktenīgas. Tās neaptur jūsu programmu tajā brīdī, kad tās notiek. Raku valodā dažas neveiksmes paliek klusas. Dažas no tām reaģē tikai vēlāk, kad jūs lietojat rezultātu. Citas ļauj jums tās apskatīt, un jūsu programma turpina darbu. Divas no tām jūs jau redzējāt šajā daļā. Ir noderīgi tās redzēt kopā vienuviet.

**Dalīšana ar nulli.** Tā nerada kļūdu savā rindā. Programma izveido slikto vērtību un klusi to patur. Vērtība izmet izņēmumu tikai tad, kad jūs to *izmantojat*. Piemēram, jūs to izdrukājat vai pārvēršat citā tipā:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Lapa [Mīkstās neveiksmes](/lv/oop/failures) izskaidro šo vēlo reakciju. Tā izskaidro arī `Failure` objektus aiz tās.

**Neveiksmīga ārēja programma.** `run` un `shell` atgriež `Proc`. Dažreiz programma neizdodas. Tās `Proc` tajā brīdī neizmet izņēmumu. Tas izmet izņēmumu tikai vienā gadījumā. Tas ir tad, kad jūs *izmetat* `Proc` bez apstrādes. Tāpēc paturiet `Proc` un nolasiet `.exitcode`. Vai arī pārbaudiet, vai tas ir patiess vai aplams. Tad neveiksme paliek vienkārša vērtība. Jūs varat uz to reaģēt. To jūs redzējāt tematā [Proc objekts](/lv/oop/external-programs/the-proc-object).

Abiem gadījumiem ir kas kopīgs. Neveiksmi var *atlikt* jeb atstāt uz vēlāku laiku. Tad programma uzreiz neavarē. Neveiksme kļūst par vērtību. Jūs apskatāt šo vērtību, kad esat gatavi. `try` un fāzeris `CATCH` apstrādā kļūdas, kas tiek izmestas uzreiz. Abi šīs lapas veidi apstrādā pārējās kļūdas.

{% include nav.html %}
