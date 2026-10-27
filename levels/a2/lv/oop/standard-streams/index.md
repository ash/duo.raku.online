---
title: Standarta plūsmas
translations_gpt:
---

{% include menu.html %}

Katrai programmai ir trīs _standarta plūsmas_. Plūsma nes tekstu programmā vai ārā no tās. Šīs trīs plūsmas savieno programmu ar ārējo pasauli. Tās ir standarta izvade, standarta kļūdas un standarta ievade. Raku dod jums tām trīs speciālus mainīgos: `$*OUT`, `$*ERR` un `$*IN`.

Standarta izvade ir programmas parastajai izvadei. Jūs to jau lietojat visu laiku. `say` un `print` sūta savu tekstu uz `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Kļūdu paziņojumi un citi paziņojumi par problēmām iet uz standarta kļūdu plūsmu. Tā ir atsevišķa plūsma. Tāpēc šie paziņojumi nesajaucas ar programmas īsto izvadi. Rutīna `note` raksta standarta kļūdu plūsmā:

```raku
note 'Something looks wrong'; # goes to standard error
```

Tas ir noderīgi. Jūs varat sūtīt katru no abām plūsmām uz citu vietu. To sauc par novirzīšanu. Piemēram, jūs varat saglabāt izvadi failā. Bet kļūdu paziņojumus jūs joprojām redzat ekrānā.

Jūs varat rakstīt plūsmās arī tieši. Gan `$*OUT`, gan `$*ERR` ir _turis_. Ar turi programma var rakstīt vai lasīt datus. Katram turim ir savas metodes `say` un `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Trešā plūsma, `$*IN`, ir standarta ievade. Tā ienes tekstu programmā, piemēram, no tastatūras. Jūs to jau lietojāt, bet ne tieši. Funkcija `prompt` nolasa no tās rindu. Mēs atgriežamies pie ievades lasīšanas lapā par [failu turiem](/lv/oop/file-handles). Tas ir tāpēc, ka `$*IN` ir turis, gluži kā atvērts fails.

{% include nav.html %}
