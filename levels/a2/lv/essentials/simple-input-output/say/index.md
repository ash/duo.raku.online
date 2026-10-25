---
title: 'Izvade ar `say`'
---

{% include menu.html %}

Funkcija `say` izdrukā vērtības uz standarta izvades straumi, `STDOUT`. To sauc arī par apakšprogrammu jeb vienkārši par rutīnu. Vai jūs palaižat programmu terminālī? Tad jūs redzat izvadi tur. Vai jūs lietojat tiešsaistes pakalpojumu? Tad izvade nonāk īpašā tīmekļa lapas daļā.

Šeit ir piemērs, kā izmantot `say`:

```raku
say 42;
```

Šī rinda var būt daļa no lielākas programmas. Tā var būt arī visa programma. Protams, tā izdrukā `42` izvadē.

Tagad pamēģināsim virkni:

```raku
say 'Hello, World!';
```

Labi! Tagad `Hello, World!` ir uz ekrāna.

Funkcija `say` var ņemt vairāk nekā vienu argumentu. Tāpēc mēs varam izdrukāt vairākas vērtības uzreiz:

```raku
say 42, 'Hello, World!';
```

Bet paskatieties uz izvadi. Tās daļas ir savienotas vienā virknē: `42Hello, World!`. Tāpēc labāk starp tām pievienot atstarpi. Jūs jau varat atrisināt šo problēmu. Piemēram, šādi:

```raku
say 42, ' ', 'Hello, World!';
```

Funkcija `say` izdrukā visus argumentus. Tad tā pievieno izvadei jaunas rindas rakstzīmi.

{% include nav.html %}
