---
title: Standarta plūsmas
translations_gpt:
---

{% include menu.html %}

Katrai programmai ir trīs _standarta plūsmas_, kas to savieno ar vidi. Tās ir standarta izvade, standarta kļūdas un standarta ievade. Raku tās dara pieejamas caur trim speciāliem mainīgajiem: `$*OUT`, `$*ERR` un `$*IN`.

Patiesībā jūs rakstāt standarta izvadē jau no paša sākuma. Gan `say`, gan `print` sūta savu tekstu uz `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Kļūdu paziņojumi un citi paziņojumi par problēmām iet uz atsevišķu plūsmu — standarta kļūdu plūsmu. Tādā veidā tie nesajaucas ar programmas īsto izvadi. Rutīna `note` raksta tur:

```raku
note 'Something looks wrong'; # goes to standard error
```

Plūsmas ir šķirtas, un tas ir noderīgi, jo katru plūsmu var novirzīt atsevišķi. Piemēram, programmas izvadi var saglabāt failā. Tās kļūdu paziņojumi joprojām parādās ekrānā.

Plūsmās var arī rakstīt tieši. Gan `$*OUT`, gan `$*ERR` ir _turi_ ar savām metodēm `say` un `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

Trešā plūsma, `$*IN`, ir standarta ievade. Jūs to jau esat lietojuši, bet ne tieši: `prompt` nolasa no tās rindu. Mēs atgriezīsimies pie ievades lasīšanas tematā par [failu turiem](/lv/oop/file-handles). Tas ir tāpēc, ka `$*IN` ir turis, gluži tāpat kā atvērts fails.

{% include nav.html %}
