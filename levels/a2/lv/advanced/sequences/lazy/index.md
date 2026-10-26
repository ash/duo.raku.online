---
title: Slinkas un bezgalīgas secības
translations_gpt:
---

{% include menu.html %}

Virknei nav jāaprēķina visas savas vērtības uzreiz. Raku virknes ir _slinkas_. Raku rada katru vērtību tikai tad, kad jums to tiešām vajag. Tāpēc jūs varat aprakstīt virkni pavisam bez beigām.

Bezgalīgai virknei izmantojiet `Inf` kā beigu punktu. Raku izpilda `=` pirms `...`. Mēs sakām, ka `...` saistās vaļīgāk nekā `=`. Tāpēc ielieciet virkni iekavās:

```raku
my $naturals = (1 ... Inf);
```

Paskatieties uz `my $naturals = 1 ... Inf` bez iekavām. Šeit mainīgais saņem tikai `1`. Pēc tam Raku būvē virkni atsevišķi. Neviens šo bezgalīgo virkni neizmanto. Bet Raku mēģina to aprēķināt. Tāpēc programma uzkaras un nekad nebeidzas.

Pagaidām Raku neko neaprēķina. Virkne dod jums vērtības tikai tad, kad jūs tās prasāt. Metode `head` paņem pirmās dažas vērtības:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

Virkne ir bezgalīga. Bet Raku rada tikai pirmos piecus skaitļus. Bez slinkuma programma mēģina uzbūvēt visu bezgalīgo virkni. Šāda programma nekad nebeidz darbu.

Galīgai virknei ir beigas. Šādai virknei metode `tail` paņem vērtības no beigām:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Slinkums ļauj jums darīt divas lietas atsevišķi. Vispirms jūs dodat virknes _aprakstu_. Vēlāk jūs izlemjat, cik daudz no tās izmantot.

{% include nav.html %}
