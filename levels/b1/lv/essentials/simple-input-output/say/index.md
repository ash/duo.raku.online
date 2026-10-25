---
title: 'Izvade ar `say`'
---

{% include menu.html %}

Funkcija `say` izdrukā vērtības uz standarta izvades straumi, `STDOUT`. To sauc arī par apakšprogrammu jeb vienkārši rutīnu. Ja jūs palaižat programmu no termināļa, izvade parādās tur. Tiešsaistes pakalpojumos tā nonāk īpašā tīmekļa lapas apgabalā.

Šeit ir piemērs, kā izmantot `say`:

```raku
say 42;
```

Šī rinda var būt daļa no lielākas programmas vai visa programma. Protams, tā izdrukā `42` izvadē.

Tagad strādāsim ar virkni:

```raku
say 'Hello, World!';
```

Un te tas ir: `Hello, World!` uz ekrāna.

`say` var pieņemt vairākus argumentus, tāpēc mēs varam izdrukāt vairāk vērtību vienā reizē:

```raku
say 42, 'Hello, World!';
```

Tikai ņemiet vērā, ka daļas tiek apvienotas vienā virknē: `42Hello, World!`. Tāpēc labāk starp tām pievienot atstarpi. Jums jau vajadzētu prast atrisināt šo problēmu. Piemēram, šādi:

```raku
say 42, ' ', 'Hello, World!';
```

Pēc visiem argumentiem `say` pievieno izvadei jaunas rindas rakstzīmi.

{% include nav.html %}
