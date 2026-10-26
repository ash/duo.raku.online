---
title: q, qq un Q
---

{% include menu.html %}

Ir trīs bāzes citēšanas operatori. Tie dažādā mērā maina tekstu savā iekšienē:

* `q` — kā vienpēdiņas: gandrīz viss teksts paliek tāds, kāds tas ir
* `qq` — kā dubultpēdiņas: Raku interpolē mainīgos un aizbēgšanas secības
* `Q` — visburtiskākais: Raku **neko** nemaina

Katrs no tiem ņem tekstu starp diviem norobežotājiem. Norobežotāji ir rakstzīmes ap tekstu. Jūs jau zināt `'…'`. Tā ir `q` īsā forma. Un `"…"` ir `qq` īsā forma:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` nemaina `$name`. `qq` to interpolē. Atpakaļsvītras aizbēgšanas secības, piemēram, `\n`, strādā tāpat. Tikai `qq` un `"…"` pārvērš `\n` par īstu jaunrindu. Gan `q`, gan `Q` to atstāj kā divas rakstzīmes: `\` un `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Tad kāda ir atšķirība starp `q` un `Q`? `q` ir kā vienpēdiņas. Tas tomēr apstrādā *nelielu* aizbēgšanas secību kopu. Dubulta atpakaļsvītra `\\` kļūst par vienu atpakaļsvītru. Jūs varat arī aizbēgt aizverošo norobežotāju ar atpakaļsvītru. Bet vienkāršā `Q` forma nemaina pilnīgi **neko**:

```raku
say q{a\\b}; # a\b   — q saspiež aizēto atpakaļsvītru
say Q{a\\b}; # a\\b  — Q saglabā abas rakstzīmes
```

Jūs varat izmantot jebkurus norobežotājus: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Tas palīdz, kad pašā tekstā ir pēdiņas. Šie trīs operatori ir pamats. Nākamā tēma parāda [_adverbus_](/lv/advanced/quoting/adverbs). Ar tiem jūs precīzi izvēlaties, kuras funkcijas ir ieslēgtas.

{% include nav.html %}
