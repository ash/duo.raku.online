---
title: Ne katra kļūda parādās uzreiz
translations_gpt:
---

{% include menu.html %}

Pēc noklusējuma izmests izņēmums uzreiz aptur programmu. Jūs to noķerat ar `try`. Bet ne katra kļūda, kas izskatās liktenīga, tiešām uzreiz aptur jūsu programmu. Raku ir neveiksmes, kas paliek klusas. Dažas no tām reaģē tikai tad, kad jūs lietojat rezultātu. Citas ļauj jums tās pārbaudīt un turpināt darbu. Divas no tām jūs šajā daļā jau esat redzējuši. Ir vērts tās savākt vienuviet.

**Dalīšana ar nulli.** Dalīšana ar nulli nerada kļūdu tur, kur tā uzrakstīta. Sliktā vērtība tiek radīta un klusi paturēta. Tā izmet izņēmumu tikai tad, kad jūs to *izmantojat*. Piemēram, tā notiek, kad jūs to izdrukājat vai pārvēršat citā tipā:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Par šo aizkavēto uzvedību un `Failure` objektiem aiz tās stāsta temats [Mīkstās neveiksmes](/lv/oop/failures).

**Neveiksmīga ārēja programma.** Pieņemsim, ka `run` vai `shell` atgriež `Proc` programmai, kas neizdevās. Šis `Proc` neizmet izņēmumu, kad tas tiek radīts. Tas izmet izņēmumu tikai tad, ja jūs to *izmetat* bez apstrādes. Saglabājiet to un nolasiet `.exitcode` vai pārbaudiet to kā Būla vērtību. Tad neveiksme paliek vienkārša vērtība, uz kuru jūs varat reaģēt. To jūs redzējāt tematā [Proc objekts](/lv/oop/external-programs/the-proc-object).

Abiem gadījumiem ir kas kopīgs. Neveiksmi var *atlikt*, tas ir, atstāt uz vēlāku laiku. Tā kļūst par vērtību, ko jūs pārbaudāt, kad esat gatavi. Tā neizraisa programmas avāriju uzreiz. `try` un fāzeris `CATCH` tiek galā ar kļūdām, kas tiek izmestas uzreiz. Šīs lapas veidi tiek galā ar kļūdām, kas netiek izmestas uzreiz.

{% include nav.html %}
