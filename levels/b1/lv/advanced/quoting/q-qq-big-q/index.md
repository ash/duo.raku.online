---
title: q, qq un Q
---

{% include menu.html %}

Ir trīs bāzes citēšanas operatori. Atšķirība ir tajā, cik daudz tie apstrādā tekstu savā iekšienē:

* `q` — kā vienpēdiņas: gandrīz viss paliek tāds, kāds ir
* `qq` — kā dubultpēdiņas: mainīgie un aizbēgšanas secības tiek interpolēti
* `Q` — visburtiskākais no visiem: **nekas** netiek apstrādāts

Katrs no tiem ņem tekstu starp norobežotāju pāri. Labi zināmais `'…'` ir tikai īss veids, kā uzrakstīt `q`. Tāpat `"…"` ir `qq` īsais pieraksts:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` atstāj `$name` tādu, kāds tas ir, bet `qq` to interpolē. Atpakaļsvītras aizbēgšanas secības, piemēram, `\n`, darbojas tāpat. Tikai `qq` (un `"…"`) pārvērš `\n` par īstu jaunrindu. Gan `q`, gan `Q` to atstāj kā divas rakstzīmes, `\` un `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Tad ar ko atšķiras `q` un `Q`? Tāpat kā vienpēdiņas, `q` tomēr apstrādā *nelielu* aizbēgšanas secību kopu. Dubultota atpakaļsvītra `\\` kļūst par vienu, un jūs varat aizbēgt aizverošo norobežotāju. Turpretī vienkāršā `Q` forma neapstrādā pilnīgi **neko**:

```raku
say q{a\\b}; # a\b   — q saspiež aizēto atpakaļsvītru
say Q{a\\b}; # a\\b  — Q saglabā abas rakstzīmes
```

Jūs varat izmantot jebkurus norobežotājus, piemēram, `q{…}`, `q[…]`, `q/…/` vai `q!…!`. Tas ir noderīgi, ja pašā tekstā ir pēdiņas. Šie trīs operatori ir pamats. Nākamā tēma parāda, kā [_adverbi_](/lv/advanced/quoting/adverbs) ļauj precīzi izvēlēties, kuras funkcijas ir ieslēgtas.

{% include nav.html %}
